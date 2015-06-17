package br.org.tutty.posdiff.database;

import org.junit.Test;

import java.io.BufferedReader;
import java.io.IOException;

/**
 * Created by drferreira on 16/06/15.
 */
public class DataManagerTest {

    @Test
    public void createSchema() throws IOException, InterruptedException {
        DatabaseManager databaseManager = new DatabaseManager();
        Database database = new Database("linda","localhost", "5432", "postgres", "postgres");

        BufferedReader result = databaseManager.createSchema(database);

        StringBuffer output = new StringBuffer();
        String line = "";
        while ((line = result.readLine())!= null) {
            output.append(line + "\n");
        }

        System.out.print(output.toString());
    }
}
