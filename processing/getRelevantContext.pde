void getRelevantContext() {
  if ( json.getJSONObject("result").getJSONObject("response").getJSONObject("data").getJSONObject("flight").isNull("airline"))
    contextData[0]="Vol personnel";
  else
    contextData[0] = "Compagnie " + json.getJSONObject("result").getJSONObject("response").getJSONObject("data").getJSONObject("flight").getJSONObject("airline").getString("name");

  if ( json.getJSONObject("result").getJSONObject("response").getJSONObject("data").getJSONObject("flight").isNull("aircraft"))
    contextData[1]="Avion de type inconnu";
  else
    contextData[1] = json.getJSONObject("result").getJSONObject("response").getJSONObject("data").getJSONObject("flight").getJSONObject("aircraft").getJSONObject("model").getString("text");

  if ( json.getJSONObject("result").getJSONObject("response").getJSONObject("data").getJSONObject("flight").getJSONObject("airport").isNull("origin")) {
    contextData[4]="Origine inconnue";
  } else {
    contextData[4] = json.getJSONObject("result").getJSONObject("response").getJSONObject("data").getJSONObject("flight").getJSONObject("airport").getJSONObject("origin").getJSONObject("position").getJSONObject("region").getString("city") + ", " + json.getJSONObject("result").getJSONObject("response").getJSONObject("data").getJSONObject("flight").getJSONObject("airport").getJSONObject("origin").getJSONObject("position").getJSONObject("country").getString("name");
  };
}