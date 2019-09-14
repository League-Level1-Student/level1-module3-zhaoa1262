package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		
		Pencil pencil = new Pencil();
		Textbook textbook = new Textbook();
		Ruler ruler = new Ruler();
		Backpack backpack = new Backpack();
		
		
		backpack.putInBackpack(pencil);
		textbook.read();
		backpack.putInBackpack(textbook);
		ruler.measure();
		backpack.putInBackpack(ruler);
		
		backpack.goToSchool();
		
		
	}
}
