import java.util.Deque;

Deque deck = new Deque();
boolean start = true;
PImage photo;
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
}