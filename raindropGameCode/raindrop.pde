class Raindrop {
  PVector loc, vel, acc; //initialize vectors
  int diam; //intialize variable
  color c;
  Raindrop(float x, float y) {
    loc= new PVector(x, y);
    vel=new PVector(0, 3);
    acc= new PVector(0, random(0, .1));
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
    boolean a;
    if (loc.dist(c.loc) < diam/2+c.diam/2) {
      return a= true;
    } else {
      return a=false;
    }
  }
  void reset() {
    loc.y=0;
    vel.set(0, 3);
  }
}