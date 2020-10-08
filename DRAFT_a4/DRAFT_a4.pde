Bicycle bicycle;
Bird bird;
Kite kite;
Kid kid;
Mountains mountains;


//color constants
color flesh = color(255,203,155);
color orange = color(33,118,206);
color blue = color(229,117,12);

void setup(){
  size(700,500);
  float speed = 1;
  bicycle = new Bicycle(325, 410, speed * 3);
  bird = new Bird(100,50,100, speed / 2);
  kite = new Kite(170,111, 220, 151, 0, 0.08, 2, speed);
  kid = new Kid(345,326,0,0, 0.45, 9,flesh,orange, blue, speed);
  mountains = new Mountains();
}

void draw(){
  //reset background
  background(168,221,245);
  noStroke();
  fill(62,185,71);
  rectMode(CENTER);
  rect(width/2,450,width,100);
  
  mountains.display();
  mountains.move();
  
  //display kite
  kite.display();
  //move kite
  kite.move();
  
  //display Kid
  kid.display();
  //move kid 
  kid.move();
  
  //display bicycle 
  bicycle.display();
  //move bicycle
  bicycle.move();
  
  //display bird
  bird.display();
  //move bird
  bird.move();
}
