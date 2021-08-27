// This entire class is indicative of Encapsulation due to the fact that it
// contains most of the working parts of the entire progam. All the data and methods are bundled up into this one class.
class Country {
  late String nationName;
  late String nationClassification;
  late String nationLeader;
  late String storedCredentials;
  
  late String userName;
  
  void checkDatabase(){
    print("Checking if user credentials match...");
    if(userName == storedCredentials){
      print('Welcome back, '+userName+".");
      
    }else{
      print("Oh dear, it seems that you've entered the wrong credentials.");
    }
  }
  
  void displayStatistics(){
    print("The " + nationClassification + " of the " + nationName + " is waiting for your declarations, " + nationLeader + ".");
  }
  
  void conflictStatistics(){
    print("We are not in war.");
  }
  
  void login(){  // This is where Abstraction comes into play.
    // By combining these three methods into one, the program can perfectly recreate each response every time the method is called.
    checkDatabase();
    displayStatistics();
    conflictStatistics();
  }
  
  Country(this.storedCredentials);
}

// This class displays both Inheritance and Polymorphism due to it calling upon the parent class and inheriting all properties and methods
// of the class. Polymorphism is done by adding and changing methods, allowing it to display the current happenings that are
// currently transpiring within the country.
class Hexagon extends Country{
  @override
  String userName;
  static String credentials = "Hexagon";
  String nationName = "Holy Hexagon Empire";
  String nationClassification = "Great and Unified Dominion";
  String nationLeader = "High Seer";

  void displayStatistics(){
  print("The " + nationClassification + " of the " + nationName + " is currently at war, " + nationLeader + ".\n"
        + "Our sector is amassing very heavy losses. I do hope that you can take care of it soon.");
  }
  
  void conflictStatistics(){
    print("\nMorale is low, High Seer. The enemy has broken through the LaGrange defensive points.\n"
         + "Couriers from the local Solar Expeditionary Force is currently en route to Central High Command.\n"
         + "ALERT's main divisions will be dispatched shortly.\n"
         + "I suggest we utilize the remaining Whiteguard Operatives to stage a defense in the moon of Ulysses.\n"
         + "The closest Alpha-Liberty Emergency Response Team division's ETA to the Cytreim System is about 53 minutes.\n\n"
         + "Overseer help us all.");
  }
  
  Hexagon(this.userName) : super(credentials);
}
// This class also displays inheritance, as it calls upon the parent class in order to inherit all of its properties and methods.
class Pierenne extends Country{
  @override
  String userName;
  static String credentials = "Pierenne";
  String nationName = "Pierenne";
  String nationClassification = "Theocratic Republic";
  String nationLeader = "Divinity";
  
  void conflictStatistics(){
    print("Our campaign against the Hexagon are doing well, Your Divinity.");
  }
  
  Pierenne(this.userName) : super(credentials);
}

void main(){
//   Hexagon user = Hexagon("Hexagon");
  Pierenne user = Pierenne("Pierenne");
  user.login();
}