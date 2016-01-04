int count=50;
PVector mouse;   //declare a P
//Raindrop []r= new Raindrop[count];      //declare a new Raindrop called r
ArrayList<Raindrop> raindrops=new ArrayList<Raindrop>();
Catcher c;
int score;

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(800, 600);
  mouse = new PVector(); //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  for (int i= 0; i<count; i++) {
    raindrops.add(new Raindrop(random(width), random(-height, 0)));   //Initialize r. The parameters used are the initial x and y positions (constructor)
  }
  c= new Catcher(150);
  score=0;
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(185, 208, 222);
  for (int i= 0; i<count; i++) {
    Raindrop r = raindrops.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(c)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r.reset();                         //if it is, reset the raindrop
      score=score+1;
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r.reset();                           //if it does, reset the raindrop
    }
  }
  c.display();
  c.update();
  textSize(50);
  text(score, 375,70);
}