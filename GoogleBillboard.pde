public final static String e = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{
  for (int i = 0; i < e.length() - 10; i++){
    double dNum = Double.parseDouble(e.substring(i, i + 10));
    if (isPrime(dNum)){
      System.out.println(dNum);
      break;
    }
  }

  /*int count = 0;
  for (int i = 0; i < e.length() - 9; i++){
    int sum = 0;
    for (int j = i; j < i + 10; j++)
      sum += Double.parseDouble(e.substring(j, j + 1));
    if (sum == 49) count++;
    if (count == 5) System.out.println(Double.parseDouble(e.substring(i, i + 10)));
  }*/
}
public boolean isPrime(double dNum)  
{   
  for (int i = 2; i <= Math.sqrt(dNum); i++)
    if (dNum % i == 0) return false;
  return true;
}
