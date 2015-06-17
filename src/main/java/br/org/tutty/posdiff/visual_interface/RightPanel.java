package br.org.tutty.posdiff.visual_interface;

import br.org.tutty.posdiff.visual_interface.input.*;

import javax.swing.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by drferreira on 16/06/15.
 */
public class RightPanel extends JPanel implements View{
    private static Integer height = 200;
    private static Integer widht = 400;
    private static String URL_LABEL      = "URL            ";
    private static String DB_NAME_LABEL  = "Database Name  ";
    private static String USERNAME_LABEL = "Username       ";
    private static String PORT_LABEL     = "Port           ";
    private static String PASSWORD_LABEL = "Password       ";

    public Label urlLabelRight = new Label(URL_LABEL);
    public URLServerRight urlDataBaseRight = new URLServerRight();

    public Label databaseNameLabelRight = new Label(DB_NAME_LABEL);
    public DatabaseName databaseNameRight = new DatabaseName();

    public Label usernameLabelRight = new Label(USERNAME_LABEL);
    public Username usernameRight = new Username();

    public Label portLabelRight = new Label(PORT_LABEL);
    public Port portRight = new Port();

    public Label passwordLabelRight = new Label(PASSWORD_LABEL);
    public Password passwordRight = new Password();

    @Override
    public void mount() {
        List<View> views = new ArrayList<>();

        views.add(urlLabelRight);
        views.add(urlDataBaseRight);

        views.add(databaseNameLabelRight);
        views.add(databaseNameRight);

        views.add(usernameLabelRight);
        views.add(usernameRight);

        views.add(portLabelRight);
        views.add(portRight);

        views.add(passwordLabelRight);
        views.add(passwordRight);

        views.forEach(view -> view.mount());

        addComponents();
        this.setVisible(true);
    }

    private void addComponents(){

        this.add(databaseNameLabelRight);
        this.add(databaseNameRight);

        this.add(usernameLabelRight);
        this.add(usernameRight);

        this.add(portLabelRight);
        this.add(portRight);

        this.add(passwordLabelRight);
        this.add(passwordRight);

        this.add(urlLabelRight);
        this.add(urlDataBaseRight);

    }

    @Override
    public Dimension getPreferredSize() {
        return new Dimension(widht, height);
    }

}
