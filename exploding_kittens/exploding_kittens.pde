import java.util.Deque;

//interface Deque<Card>;
 boolean start = true;
 PImage photo;
 int turn, numPlayers;
 int order = 1;
 
void setup() {
  size(400, 400); //generate world
  frameRate(60);
  if (start){
    background (0, 0, 0);
    photo = loadImage("explodingkittens.jpg");
    photo.resize(400, 400);
    image(photo, 0, 0);
    //text("EXPODING KITTENS", 150, 200);
    //display();
  }
}

void draw() {
  
  //add ordering
  while (turn < numPlayers) {
    players[turn].setTurn();
    if (!isDead()) {
      //allow players to select a card or 2
      Card[] cards = player[turn].play()
      int card1 = cards[0].getID();
      int card2 = cards[1].getID();
      
      //check card types
      if (card1 == -1 && card2 == -1) { //if they don't want to play any cards
        
      }
      else if (card1 < 7 && cards[1] == null) { //not a generic cat and only 1 card played
        if (card1 == 0) { //defuse
           //check if bomb in hand
           player[turn].endTurn();
        }
        else if (card1 == 2) { //exploding kitten
           
        }
        else if (card1 == 3) { //reverse
          order = -1 * order;
          player[turn].endTurn();
        }
        else if (card1 == 4) { //draw from bottom
          deal(false, player[turn]);
          player[turn].endTurn();
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
    if (!player[turn].isTurn()) {
      turn ++;
    }
    if (turn = numPlayers) {
      turn = 0;
    }
  }
}

Card deal(boolean topOrBottom, int player) { //true means deal from top
  
}
