package _05_netflix;

public class Netflix {
	
	public static void main(String[] args) {
		Movie friends = new Movie("Friends", 4);
		Movie frozen = new Movie("Frozen", 3);
		Movie joker = new Movie("Joker", 2);
		Movie moana = new Movie("Moana", 1);
		Movie endgame = new Movie("Endgame", 5);
		NetflixQueue NetflixQueue = new NetflixQueue();
		
		friends.getTicketPrice();
		frozen.getTicketPrice();
		joker.getTicketPrice();
		moana.getTicketPrice();
		endgame.getTicketPrice();
		
		NetflixQueue.addMovie(friends);
		NetflixQueue.addMovie(frozen);
		NetflixQueue.addMovie(joker);
		NetflixQueue.addMovie(moana);
		NetflixQueue.addMovie(endgame);
		
		NetflixQueue.printMovies();
		NetflixQueue.sortMoviesByRating();
		
		System.out.println("The best movie is " + NetflixQueue.getBestMovie());
		System.out.println("The second best movie is " + NetflixQueue.getMovie(1));
		
		
	}
}
