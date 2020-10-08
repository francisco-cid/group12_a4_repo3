class kite_string{
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float x4;
  float y4;
  
  kite_string(){
    x1 =0;
    y1 =0;
    x2 =0;
    y2 =0;
    x3 =0;
    y3 =0;
    x4 =0;
    y4 =0;
  }
  
  kite_string(float x1, float y1,float x2, float y2,float x3, float y3,float x4, float y4){
    this.x1 =x1;
    this.y1 =y1;
    this.x2 =x2;
    this.y2 =y2;
    this.x3 =x3;
    this.y3 =y3;
    this.x4 =x4;
    this.y4 =y4;
  }
  
  void display(){
    noFill();
    stroke(0);
    pushMatrix();
    rotate(radians(kiteAngle));
    bezier(x1,y1,x2,y2,x3,y3,x4,y4);
    popMatrix();
    
    //new kite(180,100, 230,120, 220,180, 160,140);
    //bezier(220, 180, 260, 220, 200, 330, 320, 350);
  
  }
  
  void move() {
        
    x1 = x1 - 1;
    x2 = x2 - 1;
    x3 = x3 - 1;
    x4 = x4 - 1;
       
 
  }
  
  
}
