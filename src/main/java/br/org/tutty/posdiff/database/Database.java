package br.org.tutty.posdiff.database;

/**
 * Created by drferreira on 16/06/15.
 */
public class Database {

    private String name;
    private String url;
    private String port;
    private String password;
    private String user;

    public Database(String name, String url, String port, String password, String user) {
        this.name = name;
        this.url = url;
        this.port = port;
        this.password = password;
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public String getUrl() {
        return url;
    }

    public String getPort() {
        return port;
    }

    public String getPassword() {
        return password;
    }

    public String getUser() {
        return user;
    }
}
