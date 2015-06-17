package br.org.tutty.posdiff.visual_interface.input;

import br.org.tutty.posdiff.visual_interface.View;

import javax.swing.*;

/**
 * Created by drferreira on 16/06/15.
 */
public class URLServerLeft extends JTextField implements View {
    private static Integer height = 10;
    private static Integer width = 150;

    public URLServerLeft() {
        super(20);
    }

    @Override
    public void mount() {
        this.setSize(width, height);
    }
}
