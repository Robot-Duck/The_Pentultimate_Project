class Link {
  float x, y;
  color c;
  String title;
  
  Link(float ix, float iy, color ic, String ititle) {
    x = ix;
    y = iy;
    c = ic;  
    title = ititle;
  }

void drawMe() {
  fill(c);
  rect(x,y,50,20);
  text(title,x + 60,y + 15);
}

float getX() {
  return x;
}

float getY() {
  return y;
}
}