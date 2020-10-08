class Mountains {
  float x, x1, speed;
  
  Mountains(){
    speed = 1;
  }
  
  Mountains(float speed){
    this.x = 0;
    this.x1 = x +  700;
    this.speed = speed;
  }
  
  void display(){
    noStroke();
    fill(203, 113, 33);
    triangle(x + 0, 400,   x + 230, 150, x + 460, 400);
    triangle(x + 220, 400, x + 400,  75, x + 580, 400);
    triangle(x + 580, 400, x + 620, 350, x + 660, 400);
    triangle(x + 660, 400, x + 670, 300, x + 700, 400);
    
    triangle(x1 + 0, 400,   x1 + 230, 150, x1 + 460, 400);
    triangle(x1 + 220, 400, x1 + 400,  75, x1 + 580, 400);
    triangle(x1 + 580, 400, x1 + 620, 350, x1 + 660, 400);
    triangle(x1 + 660, 400, x1 + 670, 300, x1 + 700, 400);
  }
  
  void move(){
    this.x -= this.speed;
    if (this.x == -1){
      this.x1 = 700;
    }
    
    this.x1 -= this.speed;
    if (this.x1 == -1){
      this.x = 700;
    }
  }
}
