class Catcher {
  PVector loc; //declare vector
  int diam; //declare variable

  Catcher(int tDiam) {
    //in constructor, initialize variable and vector
    diam=tDiam;
    loc=new PVector();
  }
  void display() {
    //draw the catcher (a red circle)
    fill(145, 18, 20);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void update() {
    //update location of catcher to the mouse
    loc.set(mouseX, mouseY);
  }
}