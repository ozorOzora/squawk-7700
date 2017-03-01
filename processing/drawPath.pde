void drawPath(float[] coordinates){
  float X = 50*(coordinates[0]-flightCoordinates[0][0]+delta[0]);
  float Y = 50*(coordinates[1]-flightCoordinates[0][1]+delta[1]);
  float Z = -(coordinates[2]/25);
  stroke(227,255,177);
  if(coordinates[3]==7700 || coordinates[3]==7600 || coordinates[3]==7500)
    stroke(255,80,80);
  strokeWeight(2);
  point(X, Y, Z);
  strokeWeight(2);
  stroke(124,170,130);
  point(X, Y, 0);
}