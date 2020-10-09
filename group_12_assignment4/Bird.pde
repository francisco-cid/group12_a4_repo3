class Bird {
  float x, y, speed;
  float wing = y - 15;
  
  Bird () {
    x = 0;
    y = 0;
    speed = 1;
  }
  
  Bird (float x, float y, float wing, float speed) {
    this.x = x;
    this.y = y;
    this.wing = wing;
    this.speed = speed;
  }
  
  void display() {
    // Slows down the rate of flapping
    if((frameCount / 15)% 2 == 0) {
    this.wing = this.y - 15;
    }
    else{
      this.wing = this.y + 15;
    }  
    
    fill (203,45,45);
    stroke(0);
    strokeWeight(2);
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
    this.x -= this.speed; 
    if (this.x < -25){
      this.x = width + 25;
    }
    
  }
}
