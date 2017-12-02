<<<<<<< HEAD
import java.util.Deque;

Deque deck = new Deque();
Card defuse = new Card("defuse", 0);
Card explodingKitten = new Card("explodingKitten", 1);
Card reverse = new Card("reverse", 2);
Card skip = new Card("skip", 3);
Card drawFromBottom = new Card("drawFromBottom", 4);
Card seeFuture = new Card("seeFuture", 5);
Card attack = new Card("attack", 6);
Card catermelon = new Card("catermelon", 7);
Card tacocat =  new Card("tacocat", 8);
Card hairyPotatoCat = new Card("hairyPotatoCat", 9);
Card rainbowCat = new Card("rainbowCat", 10);
Card beardedCat = new Card("beardedCat", 11);

boolean start = true;
PImage photo;
int turn, numPlayers;
int order = 1;
 
void setup() {
  size(400, 400); //generate world
  frameRate(60);
  if (start) {
    background (0, 0, 0);
    photo = loadImage("explodingkittens.jpg");
    photo.resize(400, 400);
    image(photo, 0, 0);
    //text("EXPODING KITTENS", 150, 200);
    //display();
  }
  for (int i = 0; i < 4; i++) {
    deck.addFirst(skip);
  }
  for (int i = 0; i < 4; i++) {
    deck.addFirst(drawFromBottom);
  }
  for (int i = 0; i < 5; i++) {
    deck.addFirst(seeFuture);
  }
  for (int i = 0; i < 4; i++) {
    deck.addFirst(attack);
  }
  for (int i = 0; i < 4; i++) {
    deck.addFirst(catermelon);
  }
  for (int i = 0; i < 4; i++) {
    deck.addFirst(tacocat);
  }
  for (int i = 0; i < 4; i++) {
    deck.addFirst(hairyPotatoCat);
  }
  for (int i = 0; i < 4; i++) {
    deck.addFirst(rainbowCat);
  }
  for (int i = 0; i < 4; i++) {
    deck.addFirst(beardedCat);
  }
}

void draw() {
  
  //add ordering
  while (turn < numPlayers) {
    players[turn].setTurn();
    if (!players[turn].isDead()) {
      //allow players to select a card or 2
      Card[] cards = players[turn].play();
      int card1 = cards[0].getID();
      int card2 = cards[1].getID();
      
      //check card types
      if (card1 == -1 && card2 == -1) { //if they don't want to play any cards
        deal(true, turn);
      }
      else if (card1 < 7 && cards[1] == null) { //not a generic cat and only 1 card played
        if (card1 == 0) { //defuse
           //check if bomb in hand
           players[turn].endTurn();
        }
        else if (card1 == 2) { //exploding kitten
           
        }
        else if (card1 == 3) { //reverse
          order = -1 * order;
          players[turn].endTurn();
        }
        else if (card1 == 4) { //draw from bottom
          deal(false, turn);
          players[turn].endTurn();
        }
        else if (card1 == 5) { //see the future
          
        }
        else if (card1 == 6) { //attack
          
        }
      }
      else if (card1 == card2) {
        //allow player to choose card from another person's hand
      }
    }
    if (!players[turn].isTurn()) {
      turn ++;
    }
    if (turn == numPlayers) {
      turn = 0;
    }
  }
}

Card deal(boolean topOrBottom, int player) { //true means deal from top

}