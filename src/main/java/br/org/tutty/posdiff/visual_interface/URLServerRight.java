package br.org.tutty.posdiff.visual_interface;

import javax.swing.*;

/**
 * Created by drferreira on 16/06/15.
 */
public class URLServerRight extends JTextField implements View{
    private static Integer height = 10;
    private static Integer width = 150;

    public URLServerRight() {
        super(20);
    }

    @Override
    public void mount() {
        this.setSize(width, height);
    }
}
