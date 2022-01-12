//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  size(500, 600); //fullScreen(), displayWidth, displayHeight
  population();
  textSetup();
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("Y2Mate (mp3cut.net).mp3"); //able to pass absolute path, file name, and URL
  //song1.play(); //Parameter is milli-seconds from start of audio file to start playing
}//End setup()

void draw() {
  powerButtonDraw();
}//End draw()

void keyPressed() {
  //PlayPause
  if (key == 'w') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length() ) {
      song1.pause();
      song1.rewind();
    }
    else {
      song1.play();
    }
  }
  //Play-Stop
  if (key == 's') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.rewind();
    }
  }
  //fastforad
  if (key == 'a') song1.skip(1000);;
  
  if (key == 'd') song1.skip(-1000);;
}//End keyPressed()

void mousePressed() {
  powerButtonMousePressed();
}//End mousepressed()
