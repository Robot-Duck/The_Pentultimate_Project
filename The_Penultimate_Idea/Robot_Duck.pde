class Robot_Duck {
  float xpos, ypos;
  float rwidth, rheight;
  color chead, cbeak, ceye, cneck, cbody, cwing, cleg, cfoot, cstroke;

  Robot_Duck(float ixpos, float iypos, float irwidth, float irheight, color ichead, color icbeak,
  color iceye, color icneck, color icbody, color icwing, color icleg, color icfoot, color icstroke) {
    xpos = ixpos;
    ypos = iypos;
    rwidth = irwidth;
    rheight = irheight;
    chead = ichead;
    cbeak = icbeak;
    ceye = iceye;
    cneck = icneck;
    cbody = icbody;
    cwing = icwing;
    cleg = icleg;
    cfoot = icfoot;   
    cstroke = icstroke;
  }
  
  void drawMe() {
    /*
    (xpos, ypos, width, height, color)
    
    duck_head(260, 250, 30, 30, 150);
    duck_neck(250, 250, 20, 50,150);
              topright,  botright,    tip
    duck_beak(250, 250,  250, 260,  230, 258, 150);
    
    
    duck_leg(300,320,5,30,150);
    duck_foot(305, 350, 280, 360, 280, 350, 150);
    duck_body(300,300,120,60,150);
    duck_wing(245,300, 320, 320, 330, 290, 190);
    */
    
    stroke(cstroke);
    
    // Neck
    fill(cneck);
    float xneck = xpos - (rwidth * .333);
    float xwidth = (rwidth * .666);
    float xheight = (rheight * 1.6666);
    rect(xneck,ypos,xwidth,xheight); 
    
    // Head
    fill(chead);
    ellipse(xpos, ypos, rwidth, rheight); 
    
    // Eye
    fill(ceye);
    ellipse(xpos,ypos, rwidth * .1, rheight * .1);
    
    // BeakTip
    float tip_to_end;
    float heightbeak;
    float beaktip_to_xpos;
    float right_to_xpos;
    float tip_to_ypos;
    
    tip_to_end = rwidth * .666;
    heightbeak = rheight * .333;
    right_to_xpos = rwidth * .333;
    
    tip_to_ypos = rheight * .26666;
    beaktip_to_xpos = tip_to_end + right_to_xpos;
    
      float xtip = xpos - beaktip_to_xpos;
      float ytip = ypos + tip_to_ypos;
      
    // beakTop  
    float x_to_top = rwidth * .333;
      float topx = xpos - x_to_top;
      float topy = ypos;
    
    // beakBottom
    float x_to_bottom = rwidth * .333;
      float bottomx = xpos - x_to_bottom;
    
    float y_to_bottom = rheight * .3333;
      float bottomy = ypos + y_to_bottom;
    
    fill(cbeak);
    triangle(topx,topy,bottomx,bottomy,xtip,ytip);
    
    
    // Leg
    fill(cleg);
    rect(xpos + (rwidth * 1.33), ypos + (rheight * 2.33), rwidth * .166, rheight);
    
    // Foot
    fill(cfoot);
    triangle(xpos + (rwidth * 1.5), ypos + (rheight * 3.33), xpos + (rwidth * .666), ypos + (rheight * 3.66), xpos + (rwidth * .666), ypos + (rheight * 3.33)); 
    
    // Body
    fill(cbody);
    ellipse(xpos + (rwidth * 1.33), ypos + (rheight * 1.66), rwidth * 4, rheight * 2);
    
    // Wing
    fill(cwing);
    triangle(xpos - (rwidth * .5), ypos + (rheight * 1.666), xpos + (rheight * 2), ypos + (rheight * 2.33), xpos + (rwidth * 2.33), ypos + (rheight * 1.33));
    
    
  }
}