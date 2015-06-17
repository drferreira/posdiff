package br.org.tutty.posdiff.visual_interface;

import javax.swing.*;

/**
 * Created by drferreira on 16/06/15.
 */
public class CompareButton extends JButton implements View{
    private static String TEXT = "Comparar";

    public CompareButton() {
        super(TEXT);
    }

    @Override
    public void mount() {
        this.setVisible(true);
    }
}
