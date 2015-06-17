package br.org.tutty.posdiff.visual_interface;

import javax.swing.*;
import java.awt.*;

/**
 * Created by drferreira on 16/06/15.
 */
public class Window extends JFrame implements View{
    private static Integer height = 300;
    private static Integer widht = 500;

    private InsidePanel insidePanel;

    @Override
    public void mount() {
        insidePanel = new InsidePanel();
        insidePanel.mount();
        this.add(insidePanel);

        this.pack();
        this.setVisible(true);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    @Override
    public Dimension getPreferredSize() {
        return new Dimension(widht, height);
    }
}
