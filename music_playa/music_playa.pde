//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
int numberOfSongs = 1;
AudioPlayer [] song = new AudioPlayer[numberOfSongs]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
int currentSong = numberOfSongs - numberOfSongs ;

void setup() {
  size(500, 600); //fullScreen(), displayWidth, displayHeight
  population();
  textSetup();
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song[currentSong] = minim.loadFile("Y2Mate (mp3cut.net).mp3");//able to pass absolute path, file name, and URL
  song[currentSong+1] = minim.loadFile("earl_sweatshirt_east_extended_instrumental_-2550735060943346255.mp3");
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
    } else if ( song1.position() >= song1.length()-3000 ) {
      song1.pause();
      song1.rewind();
    } else {
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
  //Fast Forward
  if (key == 'a') song1.skip(1000);
  //Fast Rewind
  if (key == 'd') song1.skip(-1000);
  //Mute
  if (key == 'm') { 
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
  //Loop Function
  int loopIntNum = 20; //Loop Hardcode
  if ( key == 'l' || key == 'L' ) song1.loop(loopIntNum); //Play Button
}//End keyPressed()

void mousePressed() {
  powerButtonMousePressed();
}//End mousepressed()
