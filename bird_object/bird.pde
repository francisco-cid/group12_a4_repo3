class bird {
  float x;
  float y;
  float speed;
  float wing = y - 15;
  
  bird () {
    x = 0;
    y = 0;
    speed = 1;
  }
  
  bird (float x, float y,float speed, float wing) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.wing = wing;
  }
  
  void display() {
    // Slows down the rate of flapping
    if((frameCount / 15)% 2 == 0) {
    b1.wing = b1.y - 15;
    }
    else{
      b1.wing = b1.y + 15;
    }  
    
    fill (203,45,45);
   
  // Body  (ellipse)
   ellipseMode(CENTER);
   //ellipse(100,100,30,15);
   ellipse(x,y,30,15);
   
  // Wings  (trangle)
  triangle (x-10,y, x,wing, x+10,y);
  
 
  // Head  (ellipse)
  ellipseMode(CENTER);
  ellipse(x+20,y,12,12);
  
  // Beak (Triangle)
  fill(0);
  triangle (x+25,y-2, x+35,y, x+25,y+2);
    
  } 
  
  void move() {
    x = x + speed;
    if (x > width){
      x = 0;
    }
  }
}
