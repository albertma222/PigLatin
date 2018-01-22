public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord) {
	for(int i = 0; i < sWord.length(); i++) {
		String w = sWord.substring(i, i+1);
		if(w.equals("a") || w.equals("e") || w.equals("i") || w.equals("o") || w.equals("u")) {
			return i;
		}
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1) {
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0) {
		return sWord + "way";
	}
	else if((findFirstVowel(sWord) == 1) && sWord.substring(0, 2).equals("qu")) {
		return sWord.substring(2) + "quay";
	}
	else if(findFirstVowel(sWord) >= 1) {
		return sWord.substring(1) + sWord.substring(0, 1) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
