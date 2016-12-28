 class Stapler {
   float xpos, ypos;
   float swidth;
   color scolor, hingecolor, midcolor, stroke;
   
   Stapler(float ixpos, float iypos, float iswidth, color iscolor, 
           color ihingecolor, color imidcolor, color istroke) {
     
   xpos = ixpos;
   ypos = iypos;
   swidth = iswidth;
   scolor = iscolor;
   hingecolor = ihingecolor;
   midcolor = imidcolor;
   stroke = istroke;
   }
 
   
  void drawMe() {
    //stapler_top(30, 55, 500, 80, 10, 85);
    //stapler_joint(33, 135, 25, 20, 8, 150);
    //stapler_middle(100, 135, 420, 12, 200);
    //stapler_bottom(30, 155, 500, 10, 10, 85);
    
    // Top
    
    float sheight = swidth * .16;
    
    fill(scolor);
    stroke(stroke);
    strokeWeight(1);
    rect(xpos, ypos, swidth, sheight, swidth * .02); 
    
    // Joint
    fill(hingecolor);
    rect(xpos, ypos + sheight, swidth * .05, sheight * .25, (swidth * .05) * .32);
    
    // Bottom
    fill(scolor);
    rect(xpos, ypos + sheight + sheight * .25, swidth, sheight * .125, swidth * .02);
    
    // Middle
    fill(midcolor);
    rect(xpos + (swidth * .05) + (swidth * .084), ypos + sheight, swidth * .84, sheight * .15); 
  }   
 
}