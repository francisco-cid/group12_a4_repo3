//initiates objects
kite Kite;
kite_string string;
kid Kid;

//sets angle limites for kite and arm
float kiteAngle = 0;
float kiteChange = .08;
final int KITE_ANGLE_LIMIT = 2;

float armAngle = 0;
float angleChange = .45;
final int ANGLE_LIMIT = 9;

//color constants
color flesh = color(255,203,155);
color orange = color(33,118,206);
color blue = color(229,117,12);

void setup(){
  //establishes new objects
  Kite = new kite(170,140, 230,120, 220,180);
  string = new kite_string(220, 180, 260, 220, 200, 330, 325, 350);
  Kid = new kid(345,355,0,flesh,orange, blue);
  size (500,500);
  smooth();
  frameRate(50);
}



void draw(){
  background(255);
  // Kite
  Kite.display();
  string.display();
  //rotates kite and string
  kiteAngle += kiteChange;
  if (kiteAngle > KITE_ANGLE_LIMIT || kiteAngle < 0)
  {
    kiteChange = -kiteChange;
    kiteAngle += kiteChange;
  }
 
  
  //kid display
  Kid.display();
  //rotates arm
  armAngle += angleChange;
  if (armAngle > ANGLE_LIMIT || armAngle < 0)
  {
    angleChange = -angleChange;
    armAngle += angleChange;
  }
}
