package br.org.tutty.posdiff.visual_interface;

import javax.swing.*;
import java.awt.*;

/**
 * Created by drferreira on 16/06/15.
 */
public class Window extends JFrame implements View{
    private static Integer height = 200;
    private static Integer widht = 900;

    public RightPanel rightPanel = new RightPanel();
    public LeftPanel leftPanel = new LeftPanel();

    public BottomPanel bottomPanel = new BottomPanel(this);

    @Override
    public void mount() {
        rightPanel.mount();
        bottomPanel.mount();
        leftPanel.mount();

        this.add(leftPanel, BorderLayout.WEST);
        this.add(rightPanel, BorderLayout.EAST);
        this.add(bottomPanel, BorderLayout.SOUTH);

        this.pack();
        this.setVisible(true);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    @Override
    public Dimension getPreferredSize() {
        return new Dimension(widht, height);
    }
}
