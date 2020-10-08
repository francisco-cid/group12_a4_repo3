
bird b1;

void setup(){
  b1 = new bird(100,100,1,100);
  size (500,500);
}

void draw(){
  
  background(255);
  
  b1.display();
  b1.move();
     
}
