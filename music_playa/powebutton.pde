//global Variables
color purple=#FF03F3, yellow=#FFF703, resetWhite=#FFFFFF, buttonColour;
float powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight;
//
void powerButton() {
  //Population
  powerButtonX = width*29/32;
  powerButtonY = height*0/16;
  powerButtonWidth = width*3/32;
  powerButtonHeight = height*1/16;
  rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
}//End powerButton()
//
void powerButtonDraw() {
  //Hoverover
  //Text
}//End powerButtonDraw()
//
void powerButtonMousePressed() {
  if (mouseX> && mouseX< && mouseY> && mouseY< ) exit();
}//powerButtonMousePressed()
