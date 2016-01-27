package br.org.tutty.posdiff.visual_interface;


import br.org.tutty.posdiff.visual_interface.input.*;

import javax.swing.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by drferreira on 16/06/15.
 */
public class LeftPanel extends JPanel implements View {
    private static Integer height = 200;
    private static Integer widht = 400;
    private static String URL_LABEL = "URL            ";
    private static String DB_NAME_LABEL = "Database Name  ";
    private static String USERNAME_LABEL = "Username       ";
    private static String PORT_LABEL = "Port           ";
    private static String PASSWORD_LABEL = "Password       ";

    private Label urlLabelLeft = new Label(URL_LABEL);
    public URLServerLeft urlDataBaseLeft = new URLServerLeft();

    private Label databaseNameLabelLeft = new Label(DB_NAME_LABEL);
    public DatabaseName databaseNameLeft = new DatabaseName();

    private Label userNameLabelLeft = new Label(USERNAME_LABEL);
    public Username usernameLeft = new Username();

    private Label portLabelLeft = new Label(PORT_LABEL);
    public Port portLeft = new Port();

    private Label passwordLabelLeft = new Label(PASSWORD_LABEL);
    public Password passwordLeft = new Password();

    public GridLayout layout;

    @Override
    public void mount() {
        layout = new GridLayout(5,2);

        List<View> views = new ArrayList<>();
        views.add(urlLabelLeft);
        views.add(urlDataBaseLeft);

        views.add(databaseNameLabelLeft);
        views.add(databaseNameLeft);

        views.add(userNameLabelLeft);
        views.add(usernameLeft);

        views.add(portLabelLeft);
        views.add(portLeft);

        views.add(passwordLabelLeft);
        views.add(passwordLeft);


        views.forEach(view -> view.mount());

        addComponents();
        this.setLayout(layout);
        this.setVisible(true);
    }

    private void addComponents() {
        this.add(databaseNameLabelLeft);
        this.add(databaseNameLeft);

        this.add(userNameLabelLeft);
        this.add(usernameLeft);

        this.add(portLabelLeft);
        this.add(portLeft);

        this.add(passwordLabelLeft);
        this.add(passwordLeft);

        this.add(urlLabelLeft);
        this.add(urlDataBaseLeft);
    }

    @Override
    public Dimension getPreferredSize() {
        return new Dimension(widht, height);
    }

}
