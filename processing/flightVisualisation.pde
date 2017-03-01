import java.util.Date;
import java.sql.Timestamp;

JSONObject json;
JSONArray flightData;
float[][] flightCoordinates;
float[] delta;
String[] contextData;

PFont arial;

void setup() {
  size(1000, 1000, P3D);
  frameRate(60);

  json = loadJSONObject("dataExample.json");
  flightData=json.getJSONObject("result").getJSONObject("response").getJSONObject("data").getJSONObject("flight").getJSONArray("track");

  contextData = new String[5];
  
  getRelevantContext();

  arial = createFont("Lucida Console", 18, false);

  flightCoordinates = new float[flightData.size()][4];
  for (int i = 0; i < flightData.size(); i++) {    
    JSONObject item = flightData.getJSONObject(i);
    flightCoordinates[i][0]=item.getFloat("longitude");
    flightCoordinates[i][1]=item.getFloat("latitude");
    flightCoordinates[i][2]=item.getJSONObject("altitude").getFloat("meters");
    flightCoordinates[i][3]=item.getInt("squawk");
    if (contextData[2]==null) {
      whatSquawk(item.getInt("squawk"), (long)item.getInt("timestamp"));
    }
    //Date date = new Date("1442316337".getTime());

    //println(flightCoordinates[i]);
  }
  delta = new float[3];

  delta[0]=(flightCoordinates[0][0] - flightCoordinates[flightCoordinates.length-1][0])/2;
  delta[1]=(flightCoordinates[0][1] - flightCoordinates[flightCoordinates.length-1][1])/2;
  delta[2]=(flightCoordinates[0][2] - flightCoordinates[flightCoordinates.length-1][2])/2;
}

void draw() {

  //ortho();
  background(38,50,58);
  displayTextInfo();

  setCamera();

  setScene();
}