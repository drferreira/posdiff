package br.org.tutty.posdiff.visual_interface;


import br.org.tutty.posdiff.database.Database;
import br.org.tutty.posdiff.database.DatabaseManager;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;

/**
 * Created by drferreira on 16/06/15.
 */
public class BottomPanel extends JPanel implements View, ActionListener {
    private static String COMPARE_BUTTON_LABEL = "Compare";

    private CompareButton compareButton = new CompareButton(COMPARE_BUTTON_LABEL);
    private Window window;

    public BottomPanel(Window window) {
        this.window = window;
    }

    @Override
    public void mount() {
        this.add(compareButton);
        compareButton.addActionListener(this);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        String nameLeft = window.leftPanel.databaseNameLeft.getText();
        String urlLeft = window.leftPanel.urlDataBaseLeft.getText();
        String portLeft = window.leftPanel.portLeft.getText();
        String passwordLeft = new String(window.leftPanel.passwordLeft.getPassword());
        String userLeft = new String(window.leftPanel.usernameLeft.getText());

        Database leftDatabase = new Database(nameLeft, urlLeft,portLeft,passwordLeft, userLeft);

        String nameRight = window.rightPanel.databaseNameRight.getText();
        String urlRight = window.rightPanel.urlDataBaseRight.getText();
        String portRight = window.rightPanel.portRight.getText();
        String passwordRight = new String(window.rightPanel.passwordRight.getPassword());
        String userRight = new String(window.rightPanel.usernameRight.getText());

        Database rightDatabase = new Database(nameRight, urlRight,portRight,passwordRight, userRight);

        try{
            DatabaseManager databaseManager = new DatabaseManager();
            BufferedReader result = databaseManager.compare(leftDatabase, rightDatabase);
            WindowResult windowResult = new WindowResult(result);
            windowResult.mount();

        }catch (Exception exception){
            exception.printStackTrace();
        }
    }
}
