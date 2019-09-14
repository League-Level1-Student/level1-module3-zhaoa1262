package _03_jukebox;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */


import javax.swing.SwingUtilities;

public class JukeboxRunner {
	
	Song Adios = new Song("Adios.mp3");
	
	Song Miroh = new Song("Miroh.mp3");
	
	
	public static void main(String[] args) {
		
		
		
		SwingUtilities.invokeLater(new Jukebox());
	}
}



	