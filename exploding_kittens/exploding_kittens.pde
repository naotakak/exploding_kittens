import java.util.Deque;

//interface Deque<Card>;
 boolean start = true;
 PImage photo;
 
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
  
}