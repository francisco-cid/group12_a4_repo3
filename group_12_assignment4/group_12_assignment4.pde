Bicycle bicycle1;
Bicycle bicycle2; 
Bird bird1;
Bird bird2;
Kite kite1;
Kite kite2;
Strings string1;
Strings string2;
Kid kid1;
Kid kid2;
Mountains mountains;


//color constants
color flesh = color(255,203,155);
color blue = color(33,118,206);
color orange = color(229,117,12);
color white = color(255);
color black = color(0);
color dark_flesh = color(132, 55, 34);

void setup(){
  size(700,500);
  float speed = 1;
  bicycle1 = new Bicycle(325, 425, 0, speed * 3, 1);
  bicycle2 = new Bicycle(250, 376, speed * 1.5, speed * 9, 0.5);
  bird1 = new Bird(100,50,100, speed / 1.25);
  bird2 = new Bird(75,75,100, speed / 1.25);
  kite1 = new Kite(170,111, 0, 0.08, 2, speed);
  kite2 = new Kite(500,111, 0, 0.08, 2, speed);
  string1 = new Strings(220, 151, 0, 0.08, 2, speed);
  string2 = new Strings(550, 151, 0, 0.08, 2, speed);
  kid1 = new Kid(345,326,0,0, 0.45, 9,flesh, black, orange, speed);
  kid2 = new Kid(675,326,0,0, 0.45, 9,dark_flesh, blue, white, speed);
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
  
  
  //display background bicycle
  bicycle2.display();
  //move background bicycle
  bicycle2.move();
  
  //display kite
  kite1.display();
  kite2.display();
  string1.display();
  string2.display();
  //move kite
  kite1.move();
  kite2.move();
  string1.move();
  string2.move();
  
  //display Kid
  kid1.display();
  kid2.display();
  //move kid 
  kid1.move();
  kid2.move();
  
  //display foreground bicycle 
  bicycle1.display();
  //move foreground bicycle
  bicycle1.move();
  
  //display bird
  bird1.display();
  bird2.display();
  //move bird
  bird1.move();
  bird2.move();
}
