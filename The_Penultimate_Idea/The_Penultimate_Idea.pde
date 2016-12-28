/* 
 * Rajeev & Ryan Co-op
 * Date: 12/16/2016
 * Project Name: The Penultimate Idea
*/

import processing.sound.*;

SoundFile X = new SoundFile(this, "C:\\Users\\Ryan\\Desktop\\Processing\\The_Penultimate_Idea\\data\\X.ogg");
SoundFile Night = new SoundFile(this, "C:\\Users\\Ryan\\Desktop\\Processing\\The_Penultimate_Idea\\data\\Night.ogg");
SoundFile NRG = new SoundFile(this, "C:\\Users\\Ryan\\Desktop\\Processing\\The_Penultimate_Idea\\data\\NRG.ogg");
SoundFile Upside = new SoundFile(this, "C:\\Users\\Ryan\\Desktop\\Processing\\The_Penultimate_Idea\\data\\Upside.ogg");
SoundFile Sein = new SoundFile(this, "C:\\Users\\Ryan\\Desktop\\Processing\\The_Penultimate_Idea\\data\\Sein.ogg");
SoundFile LasVegas = new SoundFile(this, "C:\\Users\\Ryan\\Desktop\\Processing\\The_Penultimate_Idea\\data\\LasVegas.ogg");

Button Seinfeld;
Button Vegas;
Button X_Files;
Button Young;
Button NRGButton;

Link Nightvid;
Link NRGvid;
Link LaughTrack;
Link PBJ;
Link Upsidevid;
Link U_dont;

Stapler David;

Robot_Duck Duck;  

String LMAO = "AYY LMAO";
PFont f;

float xpos = width;

void setup() {
  // Arraylist of pictures possible?... probably input each one manually
  size(800,600);
  
  Seinfeld = new Button(width/6,height*.75,60,#312FF5,"Seinfeld");
  Vegas = new Button(width/2,height*.75,60,#FA1900,"Las Vegas");
  NRGButton = new Button(width*.83333,height*.75,60,#16DE1E,"NRG");
  
  Nightvid = new Link(10,360,#FFF527,"The Night Is Young");
  NRGvid = new Link(10,330,#16DE1E,"NRG");
  LaughTrack = new Link(10,300,#FF12E0,"Laugh Track");
  PBJ = new Link(10,270,#FF8512,"Peanut Butter Jelly");
  Upsidevid = new Link(10,240,#12FFE9,"Upside Down & Inside Out");
  U_dont = new Link(10,210,#a812ff, "U Don't Know Me");
 
  // xpos, ypos, swidth, scolor, hingecolor, midcolor, stroke
  David = new Stapler(350,300,350,85,150,200,15);
  
  // xpos, ypos, rwidth, rheight, chead, cbeak, ceye, cneck, cbody, cwing, cleg, cfoot, cstroke
  Duck = new Robot_Duck(470,75,50,50,125,125,125,125,125,125,125,125,0);

  
  f = createFont("Arial",100,true);  
  
  X.play();
}


void draw() {
  // background nested in if statements dependent on the song that is playing (possibly cover art of song)?
  background(0);
    
  // Platform
  stroke(255);
  line(0,height*.67,width,height*.67);
  
  Seinfeld.drawMe();
  Vegas.drawMe();
  NRGButton.drawMe();
  
  Nightvid.drawMe();
  NRGvid.drawMe();
  LaughTrack.drawMe();
  PBJ.drawMe();
  Upsidevid.drawMe();
  U_dont.drawMe();
  
  David.drawMe();
  Duck.drawMe();
  
  textScroll(height - 10, 5, LMAO);
}

void textScroll(float ypos, float xspeed, String text) {
  textFont(f,100);
  fill(#16DE1E);
  text(text,xpos,ypos);
  xpos -= xspeed;  
  
  if (xpos < 0 - 500) {
    xpos = width;
  }
}

void mousePressed() {
  if (dist(Seinfeld.getX(),Seinfeld.getY(),mouseX,mouseY) < (Seinfeld.getR()/2)) {
    Sein.play();    
    X.stop();
    Night.stop();
    NRG.stop();
    Upside.stop();
    LasVegas.stop();
  }
  
  if (dist(Vegas.getX(),Vegas.getY(),mouseX,mouseY) < (Vegas.getR()/2)) {
    LasVegas.play();    
    X.stop();
    Night.stop();
    NRG.stop();
    Upside.stop();
    Sein.stop();
  }  

  if (dist(NRGButton.getX(),NRGButton.getY(),mouseX,mouseY) < (NRGButton.getR()/2)) {
    NRG.play();    
    X.stop();
    Night.stop();
    LasVegas.stop();
    Upside.stop();
    Sein.stop();
  }  
  
  if (dist(random(width),random(0,100),mouseX,mouseY) < 50) {
    Upside.play();    
    X.stop();
    Night.stop();
    LasVegas.stop();
    NRG.stop();
    Sein.stop();
  }    
  
  if (height - 75 <= mouseY && mouseY <= height) {
    Night.play();    
    X.stop();
    NRG.stop();
    LasVegas.stop();
    Upside.stop();
    Sein.stop();
  }    
  
  if (10 <= mouseX && mouseX <= Nightvid.getX() + 60 && Nightvid.getY() <= mouseY && mouseY <= Nightvid.getY() + 15) {
    link("https://www.youtube.com/watch?v=QEfBv4POfik");
    X.stop();
    NRG.stop();
    LasVegas.stop();
    Upside.stop();
    Sein.stop();
    Night.stop();
  }

  if (10 <= mouseX && mouseX <= NRGvid.getX() + 60 && NRGvid.getY() <= mouseY && mouseY <= NRGvid.getY() + 15) {
    link("https://www.youtube.com/watch?v=QRMziW4922g");
    X.stop();
    NRG.stop();
    LasVegas.stop();
    Upside.stop();
    Sein.stop();
    Night.stop();
  }  

  if (10 <= mouseX && mouseX <= LaughTrack.getX() + 60 && LaughTrack.getY() <= mouseY && mouseY <= LaughTrack.getY() + 15) {
    link("https://www.youtube.com/watch?v=iYVO5bUFww0");
    X.stop();
    NRG.stop();
    LasVegas.stop();
    Upside.stop();
    Sein.stop();
    Night.stop();
  }
  
  if (10 <= mouseX && mouseX <= PBJ.getX() + 60 && PBJ.getY() <= mouseY && mouseY <= PBJ.getY() + 15) {
    link("https://www.youtube.com/watch?v=4jBDnYE1WjI");
    X.stop();
    NRG.stop();
    LasVegas.stop();
    Upside.stop();
    Sein.stop();
    Night.stop();
  }  
  
  if (10 <= mouseX && mouseX <= Upsidevid.getX() + 60 && Upsidevid.getY() <= mouseY && mouseY <= Upsidevid.getY() + 15) {
    link("https://www.youtube.com/watch?v=LWGJA9i18Co");
    X.stop();
    NRG.stop();
    LasVegas.stop();
    Upside.stop();
    Sein.stop();
    Night.stop();
  }    
  
  if (10 <= mouseX && mouseX <= U_dont.getX() + 60 && U_dont.getY() <= mouseY && mouseY <= U_dont.getY() + 15) {
    link("https://www.youtube.com/watch?v=yNSpLqmY6K0");
    X.stop();
    NRG.stop();
    LasVegas.stop();
    Upside.stop();
    Sein.stop();
    Night.stop();
  }  
  
  
  // If Robot Duck clicked, play X-Files again
}

// Upon keypressed, high thoughts play from each person - i.e. 'r' implies Ryan high thoughts scroll across screen