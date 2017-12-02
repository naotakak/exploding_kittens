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
  
  void drawCard() {
    Card temp = deck.removeFirst();
    int counter = 0
    while (temp != null) {
      if (hand[counter] = null) {
       hand[counter] = temp;
       temp = null;
      }
      counter += 1;
    }
  }
  
  void choose() {
    
  }
  
  void endTurn() {
    
  }
  
  Card play(int cardNum) {
    if (hand[cardNum] = null) {
      return null;
    }
    int temp = hand[cardNum].getID();
    return hand[cardNum];
  }
  
}