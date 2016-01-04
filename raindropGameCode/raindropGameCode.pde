int count=50; //number of raindrops
PVector mouse;   //declare a P
ArrayList<Raindrop> raindrops=new ArrayList<Raindrop>(); //arraylist
Catcher c;
int score; //declare score
float w; //declare water level
int start =0;
void setup() {
  size(800, 600);
  mouse = new PVector(); //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  for (int i= 0; i<count; i++) {
    raindrops.add(new Raindrop(random(width), random(-height, 0)));   //Initialize r. The parameters used are the initial x and y positions (constructor)
  }
  c= new Catcher(150);
  score=0; //initialize score
  w=0;
}

void draw() {
  if(mousePressed){
    //background(185, 208, 222);
    start+=1;
  }
  if(start ==1){
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(185, 208, 222);
  for (int i= 0; i<count; i++) {
    Raindrop r = raindrops.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.isInContactWith(c)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      r.reset();                         //if it is, reset the raindrop
      score=score+1; //if the catcher is in contact with raindrops, add a point to the score
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r.reset(); 
      //if it does, reset the raindrop
      w=w-5;
    }
  }
  c.display(); //display the catcher
  c.update(); //update the catcher
  fill(121, 161, 176);
  rect(0, 600, width, w);
  fill(145, 18, 20);
  textSize(50); //text size of score
  text(score, 375, 70); //location of score
  if (w <= -600) {
    background(121, 161, 176);
    text("game over", 290, height/2);
  }
}
}