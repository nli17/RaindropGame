class Raindrop {
  //declare vectors and variables
  PVector loc, vel, acc;
  int diam; 
  color c;
  Raindrop(float x, float y) {
    //assign values to variables and vectors in the constructor
    loc= new PVector(x, y);
    vel=new PVector(0, 2);
    acc= new PVector(0, random(0, .01));
    c=color(121, 161, 176);
    diam=30;
  }
  void display() {
    //draw the raindrop
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    //add movement to the raindrop
    loc.add(vel);
    vel.add(acc);
  }
  boolean isInContactWith(Catcher c) {
    //to detect if the catcher is touching raindrops
    boolean a;
    if (loc.dist(c.loc) < diam/2+c.diam/2) {
      return a= true;
    } else {
      return a=false;
    }
  }
  void reset() {
    //reset raindrop at top of canvas
    loc.y=0;
    vel.set(0, 3);
  }
}