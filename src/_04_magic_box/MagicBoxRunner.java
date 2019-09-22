package _04_magic_box;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */

import java.awt.Button;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

public class MagicBoxRunner {
	
	public static void main(String[] args) throws Exception {
		//new MagicBoxRunner().run();
		SwingUtilities.invokeLater(new MagicBox());
	}
}
