class Player {
 
  Card hand[];
  String name;
  int playerNum;
  boolean turn, isDead, hasDefuse;
  
  Player() {
    Card[] hand = new Card[20];
    name = null;
    playerNum = 0;
    turn = false;
    isDead = false;
    hasDefuse = false;
  }
  
  Player(String newName, int newNum) {
    Card[] hand = new Card[20];
    name = newName;
    playerNum = newNum;
    turn = false;
    isDead = false;
    hasDefuse = true;
  }
  
  boolean hasDefuse() {
    return hasDefuse;
  }
  
  boolean isDead() {
    return notDead;
  }
  
  boolean isTurn() {
    return turn;
  }
  
  void setTurn() {
    turn = true;
  }
  
  /***
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
  ***/
  
  void choose() {
    
  }
  
  void endTurn() {
    turn = false;
  }
  
  Card[] play(int card1, int card2) {
    /***
    if (hand[card1] = null) {
      return null;
    }
    Card[] temp = hand[cardNum];
    hand[cardNum] = null;
    return temp;
    ***/
    
    //check if card can be played
    Card[2] ret;
    ret[1] = hand[card1];
    ret[2] = hand[card2];
    hand[card1] = null;
    hand[card2] = null;
    return ret;
  }
  
}