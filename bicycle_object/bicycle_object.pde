Bicycle bi;

void setup(){
  size(500, 500); 
  bi = new Bicycle(); 
}

void draw(){
  background(255);
  bi.display();
  bi.move();
}
