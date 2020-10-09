class strings {
  //kite variables
  float kiteAngle, kiteChange, speed;
  final int KITE_ANGLE_LIMIT;
  //string variables 
  float sx, sy; 



  strings() {

    kiteAngle = 0; 
    kiteChange = 0.08;
    KITE_ANGLE_LIMIT = 2;

    sx = 0;
    sy =0;
  }

  strings(float sx, float sy, float kiteAngle, float kiteChange, final int KITE_ANGLE_LIMIT, float speed) {

    this.kiteAngle = kiteAngle;
    this.kiteChange = kiteChange;
    this.KITE_ANGLE_LIMIT = KITE_ANGLE_LIMIT;

    this.sx = sx; 
    this.sy = sy;
    
    this.speed = speed;
  }

  void display() {

    //string 
    noFill();
    stroke(0);
    pushMatrix();
    rotate(radians(kiteAngle));
    bezier(sx, sy, sx + 60, sy + 40, sx - 20, sy + 150, sx + 105, sy + 170);
    popMatrix();
  } 

  void move() {

    //string
    this.sx -= this.speed;
    if (this.sx < -145){
      this.sx = width+70;
    }

    //rotates kite and string
    kiteAngle += kiteChange;
    if (kiteAngle > KITE_ANGLE_LIMIT || kiteAngle < 0) {
      kiteChange = -kiteChange;
      kiteAngle += kiteChange;
    }
  }
}
