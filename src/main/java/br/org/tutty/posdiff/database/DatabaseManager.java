package br.org.tutty.posdiff.database;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Created by drferreira on 16/06/15.
 */
public class DatabaseManager {

    public BufferedReader createSchema(Database database) throws IOException, InterruptedException {
        ProcessBuilder processBuilder = new ProcessBuilder(mountCommand(database));

        Process process = processBuilder.start();
        process.waitFor(10, TimeUnit.MINUTES);

        if (process.exitValue() != 1) {
            return new BufferedReader(new InputStreamReader(process.getInputStream()));
        } else {
            return new BufferedReader(new InputStreamReader(process.getErrorStream()));
        }
    }

    public void createDiff(Database databaseLeft, Database databaseRight) throws IOException, InterruptedException {
        createSchema(databaseLeft);
        createSchema(databaseRight);

//        String schemaAddressLeft = targetDir.getAbsolutePath() + "/" + "schema_" + databaseLeft.getName() + ".sql";
//        String schemaAddressRight = targetDir.getAbsolutePath() + "/" + "schema_" + databaseLeft.getName() + ".sql";

//        String[] schemas = {schemaAddressLeft, schemaAddressRight};

//        Main.main(schemas);
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
