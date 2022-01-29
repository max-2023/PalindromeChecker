public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(process(lines[i])))
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }

}
public boolean palindrome(String word)
{
  if (word.equalsIgnoreCase(reverse(word))) return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1; i >= 0; i--) sNew += str.charAt(i); 
    return sNew;
}

public String process(String str) {
  String processed = new String();
  for (int i = 0; i < str.length(); i++) {
    if (Character.isLetter(str.charAt(i))) processed += str.charAt(i);
    else continue;
  }
  return processed;
}

