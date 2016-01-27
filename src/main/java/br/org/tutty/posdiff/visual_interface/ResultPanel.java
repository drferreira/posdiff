package br.org.tutty.posdiff.visual_interface;

import javax.swing.*;
import java.awt.*;
import java.io.BufferedReader;

/**
 * Created by drferreira on 16/06/15.
 */
public class ResultPanel extends JPanel implements View{

    private BufferedReader resultReader;
    private JTextArea jTextArea = new JTextArea();

    public ResultPanel(BufferedReader resultReader) {
        this.resultReader = resultReader;
    }

    @Override
    public void mount() {
        this.add(jTextArea);
        writeInArea();
        this.setVisible(true);
    }

    private void writeInArea(){
        resultReader.lines().forEach(line -> jTextArea.append(line + "\n"));
    }

}
