public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String checker = "";
  String tester1 = "";
  String tester2 = "";
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)))
      checker = checker + word.charAt(i);
  }
  for(int i = 0; i < checker.length()/2; i++)
  {
    tester1 = tester1 + checker.charAt(i);
    tester2 = tester2 + checker.charAt(checker.length()-1-i);
  }
  if(tester1.equalsIgnoreCase(tester2))
    return true;
  return false;
}

