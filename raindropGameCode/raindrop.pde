class Raindrop{
  PVector loc, vel, acc;
  int diam;
  color c;
  Raindrop(float x, float y){
    loc= new PVector(x,y);
    vel=new PVector(0,3);
    acc= new PVector(0,.2);
    c=color(121,161,176);
    diam=50;
  }
  void display(){
    fill(c);
    noStroke();
    ellipse(loc.x,loc.y, diam, diam);
    //triangle(width/2-diam/2,height/2, width/2, height/2+diam, width/2+diam/2, height/2);
  }
  void fall(){
    loc.add(vel);
    vel.add(acc);
  }
  boolean isInContactWith(PVector w){
    boolean a;
    if(loc.dist(w)<diam/2){
      return a= true;
    }else{
      return a=false;
    }
  }
  void reset(){
    loc.y=0;
    vel.set(0,3);
  }
  
}