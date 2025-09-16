
void setup(){
  // 2.b Kald metoden fra setup
  printPartOfWord("København", 0, 3);
  
  // 2.d De sidste 4 bogstaver
  String ord = "Processing";
  printPartOfWord(ord, ord.length()-4, ord.length());
  
  // 2.e Test med forkerte argumenter
  println("\nTest med forkerte argumenter:");
  printPartOfWord("test", -1, 3);     // negative værdier
  printPartOfWord("test", 3, 1);      // start > slut
  printPartOfWord("test", 0, 10);     // index for høj
}

void printPartOfWord(String ord, int startIndex, int slutIndex){
  // 2.e Fejlhåndtering - tjek negative værdier
  if(startIndex < 0 || slutIndex < 0){
    println("Fejl: Negative værdier ikke tilladt");
    return;
  }
  
  // 2.e Fejlhåndtering - tjek om start > slut
  if(startIndex > slutIndex){
    println("Fejl: Start-index skal være mindre end slut-index");
    return;
  }
  
  // 2.e Fejlhåndtering - tjek om index er for høj
  if(slutIndex > ord.length()){
    println("Fejl: Slut-index er større end ordets længde (" + ord.length() + ")");
    return;
  }
  
  // 2.e Fejlhåndtering - tjek om start-index er for høj
  if(startIndex >= ord.length()){
    println("Fejl: Start-index er større end eller lig ordets længde");
    return;
  }
  
  // Print udsnittet
  String udsnit = ord.substring(startIndex, slutIndex);
  println("Udsnit af '" + ord + "' fra index " + startIndex + " til " + slutIndex + ": " + udsnit);
}
