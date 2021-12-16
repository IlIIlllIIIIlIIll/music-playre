//Libraries


//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3


void setup() {
  size(500, 600); //fullScreen(), displayWidth, displayHeight
  population();
  textSetup();
}//End setup()

void draw() {
  powerButtonDraw();
}//End draw()

void keyPressed() {
}//End keyPressed()

void mousePressed() {
  powerButtonMousePressed();
}//End mousepressed()
