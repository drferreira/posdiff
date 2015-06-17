package br.org.tutty.posdiff.visual_interface;

import br.org.tutty.posdiff.database.Database;
import br.org.tutty.posdiff.database.DatabaseManager;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * Created by drferreira on 16/06/15.
 */
public class InsidePanel extends JPanel implements View{
    private static Integer height = 300;
    private static Integer widht = 500;

    private URLServerLeft urlDataBaseLeft;
    // INPUT PARA DATABASE NAME LEFT
    // INPUT PARA USERNAME LEFT
    // INPUT PARA PORT LEFT
    // INPUT PARA PASSWORD LEFT

    private URLServerRight urlDataBaseRight;
    // INPUT PARA DATABASE NAME RIGHT
    // INPUT PARA USERNAME RIGHT
    // INPUT PARA PORT RIGHT
    // INPUT PARA PASSWORD RIGHT

    private CompareButton compareButton;
    private DatabaseManager databaseManager;


    @Override
    public void mount() {
        urlDataBaseLeft = new URLServerLeft();
        urlDataBaseLeft.mount();
        urlDataBaseRight = new URLServerRight();
        urlDataBaseRight.mount();
        compareButton = new CompareButton();
        compareButton.mount();

        this.add(urlDataBaseLeft);
        this.add(urlDataBaseRight);
        this.add(compareButton);

        this.setVisible(true);
    }

    @Override
    public Dimension getPreferredSize() {
        return new Dimension(widht, height);
    }

    private void addAction(){
        compareButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
//                Database databaseLeft = new Database();
//                Database databaseRight = new Database();

                databaseManager = new DatabaseManager();
//              databaseManager.createSchema()
            }
        });
    }
}
