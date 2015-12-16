class Catcher {
  PVector loc;
  int diam;

  Catcher(int tDiam) {
    diam=tDiam;
    loc=new PVector();
  }
  void display() {
    fill(145, 18, 20);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void update() {
    loc.set(mouseX, mouseY);
  }
}