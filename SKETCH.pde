
void setup() {
 size(700,700); 
 noLoop();
}

int grain = 1000;
double a = 1.4;
double b = -0.3;

public boolean convergence(double x, double y) {
  boolean converges = false;
  
  double j = 0.7618;
  double k = 0.5382;
  
  
 
  for (int i = 0; i < grain; i++) {
    
    double oldx = x;
    double oldy = y;
    
   
   x = a - Math.pow(oldx,2) + b*oldy;
   y = oldx;
   
   
  }
  
 
  
    double dis1 = Math.abs(x - j);
    double dis2 = Math.abs(y - k);
    double distanceFromAttracter = Math.sqrt(Math.pow(dis1,2) + Math.pow(dis2,2));
    
    
    if (distanceFromAttracter < 5) {
     converges = true;
   }
   
  if (converges) return true;
  else return false;
  
  
  
}


void draw() {
 loadPixels();
 
 
 for (int i = 0; i < (width*height); i++) {

 
 double r = ((double)1 / 140);
 int column = (int)Math.floor(i/700);
 
 double x = -2.5 + (r*(i%700));
 

 double y = 10 - (r)*column;
 
 
   if (convergence(x,y)) {
     pixels[i] = color(255,255,255);
     
 } else {
   pixels[i] = color(0,0,0);
  
 }
 
   
   
   System.out.println(i);
}
updatePixels();

  


 
}
