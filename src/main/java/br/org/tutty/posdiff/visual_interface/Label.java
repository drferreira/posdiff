package br.org.tutty.posdiff.visual_interface;

import javax.swing.*;

/**
 * Created by drferreira on 17/06/15.
 */
public class Label extends JLabel implements View {
    private static Integer height = 10;
    private static Integer width = 150;

    public Label(String text) {
        super(text, SwingConstants.CENTER);
    }

    @Override
    public void mount() {
        setSize(width, height);
        setVisible(true);
    }
}
