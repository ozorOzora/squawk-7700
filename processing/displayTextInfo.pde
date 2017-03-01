void displayTextInfo(){
  textFont(arial, 18);
  fill(227,255,177);
  text(contextData[4]+" - "+contextData[0]+": "+contextData[1], (-width/2)+10, width/2-195);
  fill(255,80,80);
  text(contextData[3]+" - Code transpondeur "+contextData[2], (-width/2)+10, width/2-165);
}