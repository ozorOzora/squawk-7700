int zoom=0;

void setCamera() {
  
  beginCamera();
  camera();
  translate(width/2, 650, zoom); 
  //rotateX(-PI/2);
  endCamera();

}