void setup() {
  String[] rappers = {
    "Grandmaster Flash", 
    "Run DMC", 
    "Tupac Shakur", 
    "The Notorious B.I.G.", 
    "Nas"
  };

  String[] hits = {
    "The Message", 
    "Walk This Way", 
    "California Love", 
    "Juicy", 
    "N.Y. State of Mind"
  };

  for (int i = 0; i < rappers.length; i++) {
    println((i+1) + ". " + rappers[i] + " : \"" + hits[i] + "\"");
  }
}
