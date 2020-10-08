class Kite {
  //kite variables
  float x, y, kiteAngle, kiteChange, speed;
  final int KITE_ANGLE_LIMIT;
  //string variables 
  float sx, sy; 



  Kite() {
    x = 0;
    x =0;

    kiteAngle = 0; 
    kiteChange = 0.08;
    KITE_ANGLE_LIMIT = 2;

    sx = 0;
    sy =0;
  }

  Kite(float x, float y, float sx, float sy, float kiteAngle, float kiteChange, final int KITE_ANGLE_LIMIT, float speed) {
    this.x =x;
    this.y =y;

    this.kiteAngle = kiteAngle;
    this.kiteChange = kiteChange;
    this.KITE_ANGLE_LIMIT = KITE_ANGLE_LIMIT;

    this.sx = sx; 
    this.sy = sy;
    
    this.speed = speed;
  }

  void display() {
    //kite
    stroke(0);
    fill (158, 45, 193);
    pushMatrix();
    rotate(radians(kiteAngle));
    triangle(x, y, x + 130, y - 20, x + 50, y + 40);
    triangle(x, y, x + 130, y - 20, x + 20, ((y + 40)/2));
    popMatrix();

    //string 
    noFill();
    stroke(0);
    pushMatrix();
    rotate(radians(kiteAngle));
    bezier(sx, sy, sx + 60, sy + 40, sx - 20, sy + 150, sx + 105, sy + 170);
    popMatrix();
    
  } 

  void move() {

    //kite
    this.x -= this.speed;
    if (this.x < -195){
      this.x = width + 20;
    }

    //string
    this.sx -= this.speed;
    if (this.sx < -145){
      this.sx = width + 70;
    }

    //rotates kite and string
    kiteAngle += kiteChange;
    if (kiteAngle > KITE_ANGLE_LIMIT || kiteAngle < 0) {
      kiteChange = -kiteChange;
      kiteAngle += kiteChange;
    }
  }
}
