class kid{
  float x;
  float y;
  float stro;
  color fl;
  color or;
  color bl;
  
  kid (){
    x=0;
    y=0;
    stro = 0;
  }
  
  kid(float x, float y, float stro, color fl, color or, color bl){
    this.x =x;
    this.y=y;
    this.stro = stro;
    this.fl = fl;
    this.or = or;
    this.bl = bl;
  }
  
  void display(){
    //head
    strokeWeight(1);
    stroke (stro);
    fill (fl);
    ellipseMode(CENTER);
    ellipse(x,y-46,35,35);
    
    rectMode(CENTER);
    stroke (stro);
    fill (bl);
    strokeWeight(1);
    //body
    rect(x,y+3,40,60);
    fill (or);
    //leg
    rect(x,y+53,15,40);
    
    leftarm();
  }
  
  void leftarm(){ 
    stroke(stro);
    rectMode(CENTER);
    fill(fl);
    
    pushMatrix();
    translate(x-10, y);
    rotate(radians(armAngle));
    rect(0,0,48,12);
    popMatrix();
  }
  
 void move() {
    x = x - 1;
  
  }
}
