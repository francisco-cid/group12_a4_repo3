class Kid{
  float x, y, stro, armAngle, angleChange, speed;
  final int ANGLE_LIMIT;
  color fl, or, bl;
  
  Kid(){
    x=0;
    y=0;
    stro = 0;
    speed = 0;
    armAngle = 0;
    angleChange = 0.45;
    ANGLE_LIMIT = 9;
  }
  
  Kid(float x, float y, float stro, float armAngle, float angleChange, final int ANGLE_LIMIT, color fl, color or, color bl, float speed){
    this.x =x;
    this.y=y;
    this.stro = stro;
    this.armAngle = armAngle;
    this.angleChange = angleChange;
    this.ANGLE_LIMIT = ANGLE_LIMIT;
    this.fl = fl;
    this.or = or;
    this.bl = bl;
    this.speed = speed;
    
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
    fill (255);
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
    this.x -= this.speed;
    if (this.x < -20){
      this.x = width + 195;
    }
    //move arm
    armAngle += angleChange;
    if (armAngle > ANGLE_LIMIT || armAngle < 0){
    angleChange = -angleChange;
    armAngle += angleChange;
    }
    
    
  
  }
}
