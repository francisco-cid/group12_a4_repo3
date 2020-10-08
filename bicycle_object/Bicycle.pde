class Bicycle {
  // instance variables
  float x, y, speed;
  int spoke_start, ped_a;
  
  //constructor for default values 
  Bicycle(){
    x = 125;
    y = 350; 
    speed = 5;
    spoke_start = 0;
  }
  
  //constructor 
  Bicycle(float x, float y, float speed){
    this.x = x; 
    this.y = y;
    this.speed = speed;
    this.spoke_start = 0;
    this.ped_a = 15;
  }
  
  void display(){
    color[] colors = {color(183,237,237), color(237, 183, 183), color(147, 82, 24)};
    rectMode(CENTER);
  //DRAWING A BIKE
    stroke(4);
    strokeWeight(4);
    noFill();
  //Wheels (circles of radius 50)
    ellipseMode(CENTER); 
    ellipse(x, y, 100, 100); 
    ellipse(x + 170, y, 100, 100);
  
  //spokes
    strokeWeight(2);
    int r = 50;
    for (int i = spoke_start; i < (360 + spoke_start); i = i + 15) {
      line(x, y, x + r*cos(radians(i)), y + r*sin(radians(i)));
      line(x + 170, y, x + 170 + r*cos(radians(i)), y + r*sin(radians(i)));
    }
  
    //Wheel hubs
    strokeWeight(2);
    ellipse(x, y, 10, 10); 
    ellipse(x + 170, y, 10, 10);
    
    //Seat stay, chain stay, seat tube
    strokeWeight(4);
    triangle(x, y, x + 65, y, x + 55, y - 75);
    //down tube
    line(x + 65, y, x + 160, y - 65);
    //top tube
    line(x + 55, y - 75, x + 155, y - 75);
    //fork 
    line(x + 170, y, x + 158, y - 75);
    //seat tube 
    line(x + 55, y - 75, x + 51, y - 100);
    //stem 
    //vertical 
    line(x + 158, y - 75, x + 156.9, y - 86.5);
    //horizontal
    line(x + 156.9, y - 86.5, x + 168, y - 86);  
    //chain ring 
    strokeWeight(3);
    ellipse(x + 65, y, 20, 20);
    strokeWeight(4);
    
    //pedal cranks
    float ped_x = x + 65;
    float ped_y = y; 
    float ped_len = 18; 
    
    
    //crank 1
    line(ped_x, ped_y, ped_x + ped_len*cos(radians(ped_a)), ped_y + ped_len*sin(radians(ped_a)));
    line(ped_x, ped_y, ped_x + ped_len*cos(radians(ped_a + 180)), ped_y + ped_len*sin(radians(ped_a + 180)));
    
    //pedals
    rectMode(CENTER);
    fill(10,10,10);
    rect(ped_x + ped_len*cos(radians(ped_a)), ped_y + ped_len*sin(radians(ped_a)), 6, 2);
    rect(ped_x + ped_len*cos(radians(ped_a + 180)), ped_y + ped_len*sin(radians(ped_a + 180)), 6, 2);
    noFill();
    //seat 
    stroke(colors[2]);
    strokeWeight(6);
    line(x + 46, y - 102, x + 66, y - 98);
    //handlebars 
    strokeWeight(4);
    arc(x + 168, y - 78, 20, 15, radians(-90), radians(90));
  }
  
  void move(){
    this.spoke_start += this.speed;
    this.ped_a += (this.speed / 1.5);
  }

}
