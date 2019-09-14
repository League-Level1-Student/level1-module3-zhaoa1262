package _01_intro_to_static;


	public class Athlete {
	    static int nextBibNumber;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";

	    static String name;
	    int speed;
	    int bibNumber;

	    Athlete (String name, int speed){
	        this.name = name;
	        this.speed = speed;
	        nextBibNumber++;
	    }

	    public static void main(String[] args) {
	    	Athlete Bob = new Athlete("Bob", 10);
	    	System.out.println(name + ", " + nextBibNumber + ", " + raceLocation);
	    	
	    	Athlete Joe = new Athlete("Joe", 9);
	    	System.out.println(name + ", " + nextBibNumber + ", " + raceLocation);
	        //create two athletes
	        //print their names, bibNumbers, and the location of their race. 
	    }
	}


