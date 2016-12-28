class Button {
  float x, y, r;
  color c;
  String title;
  
  Button(float ix, float iy, float ir, color ic, String ititle) {
    x = ix;
    y = iy;
    r = ir;
    c = ic;  
    title = ititle;
  }

  void drawMe() {
    strokeWeight(3);
    stroke(255);    
    fill(c);
    ellipse(x,y,r,r);
    
    textFont(f,15);
    text(title,x+40,y + 6);
  }

  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }
  
  float getR() {
    return r;
  }
}