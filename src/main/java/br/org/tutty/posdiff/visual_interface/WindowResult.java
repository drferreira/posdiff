package br.org.tutty.posdiff.visual_interface;

import javax.swing.*;
import java.awt.*;
import java.io.BufferedReader;

/**
 * Created by drferreira on 16/06/15.
 */
public class WindowResult extends JFrame implements View{
    private static Integer height = 800;
    private static Integer widht = 600;

    private ResultPanel resultPanel;

    private BufferedReader resultReader;

    public WindowResult(BufferedReader resultReader) throws HeadlessException {
        this.resultReader = resultReader;
    }

    @Override
    public void mount() {
        resultPanel = new ResultPanel(resultReader);
        resultPanel.mount();
        this.add(new JScrollPane(resultPanel));

        this.pack();
        this.setVisible(true);
        this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }

    @Override
    public Dimension getPreferredSize() {
        return new Dimension(widht, height);
    }
}
