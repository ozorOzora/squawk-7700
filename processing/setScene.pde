float rotationY=0;

void setScene() {

  pushMatrix();
  rotateX(-PI/1.55);
  rotationY += 0.0001;
  rotateZ(degrees(rotationY));


  beginShape(QUADS);
  noFill();
  stroke(227,255,177);
  strokeWeight(2);
  vertex(-150, 150, 0);
  vertex(150, 150, 0);
  vertex(150, -150, 0);
  vertex(-150, -150, 0);
  endShape();

  //textMode(SCREEN);
  //text("lol",0,100,10);
  for (int i = 0; i < flightCoordinates.length; i++) { 
    drawPath(flightCoordinates[i]);
  }
  popMatrix();
}