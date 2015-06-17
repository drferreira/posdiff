package br.org.tutty.posdiff.database;

import cz.startnet.utils.pgdiff.PgDiff;
import cz.startnet.utils.pgdiff.PgDiffArguments;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by drferreira on 16/06/15.
 */
public class DatabaseManager {

    public BufferedReader compare(Database databaseLeft, Database databaseRight) throws IOException, InterruptedException {
        File resultDirectory = createResultDirectory();

        File schemaDatabaseLeft = createSchema(resultDirectory, databaseLeft);
        File schemaDatabaseRight = createSchema(resultDirectory, databaseRight);

        return createDiff(resultDirectory, schemaDatabaseLeft, schemaDatabaseRight);
    }

    public File createSchema(File target, Database database) throws IOException, InterruptedException {
        ProcessBuilder processBuilder = new ProcessBuilder(mountCommand(database));
        processBuilder.environment().put("PGPASSWORD", database.getPassword());


        processBuilder.redirectInput(File.createTempFile("commands", ".txt", target));
        processBuilder.redirectError(File.createTempFile("errors", ".txt", target));

        File output = File.createTempFile("output", ".sql", target);

        processBuilder.redirectOutput(output);
        Process process = processBuilder.start();

        process.waitFor();
        return output;
    }

    private File createResultDirectory(){
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy_hh:mm:ss") ;
        String curDate =dateFormat.format(date);

        String downloadDir = System.getProperty("user.home")+File.separator+"Downloads"+File.separator+"posdiff"+File.separator+curDate;
        File file = new File(downloadDir);
        file.mkdirs();
        return file;
    }

    public BufferedReader createDiff(File target, File schemaLeft, File schemaRight) throws IOException, InterruptedException {
        File resultFile = File.createTempFile("result", ".sql", target);

        PrintWriter resultWriter = new PrintWriter(resultFile);

        InputStream inputStreamLeft = new FileInputStream(schemaLeft);
        InputStream inputStreamRight = new FileInputStream(schemaRight);

        PgDiff.createDiff(resultWriter, new PgDiffArguments(),inputStreamLeft, inputStreamRight );
        resultWriter.flush();

        return new BufferedReader(new FileReader(resultFile));
    }

    private List<String> mountCommand(Database database){
        List<String> commands = new ArrayList<String>();
        commands.add("pg_dump");
        commands.add("-i");
        commands.add("-U");
        commands.add(database.getUser());
        commands.add("-h");
        commands.add(database.getUrl());
        commands.add("-p");
        commands.add(database.getPort());
        commands.add("-Fp");
        commands.add("-s");
        commands.add("-v");
        commands.add("-EUTF8");
        commands.add(database.getName());

        System.out.print(commands.toString());

        return commands;
    }
}
