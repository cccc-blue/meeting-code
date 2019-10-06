import java.util.Scanner;
import java.io.File;
import java.util.regex.Pattern;

public class Analyze {
	public static void main(String[] args) {
		try {
			Scanner sc = new Scanner(new File("./iliad-cleaned.txt"));
			sc.useDelimiter(Pattern.compile("[\\s,\\.;-]+"));
			int count = 0;
			while(sc.hasNext()) {
				String myWord = sc.next().toLowerCase();
				
			}
			sc.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}