class Player {
 
  Card hand[];
  String name;
  int playerNum;
  
  Player() {
    Card[] hand = new Card[20];
    name = null;
    playerNum = 0;
  }
  
  Player(String newName, int newNum) {
    Card[] hand = new Card[20];
    name = newName;
    playerNum = newNum;
  }
  
  void draw() {
    
  }
  
  void choose() {
    
  }
  
  void endTurn() {
    
  }
  
}