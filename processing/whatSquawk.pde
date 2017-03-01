import java.text.SimpleDateFormat;
SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm");

void whatSquawk(int squawk, long timestamp) {
  if (squawk==7700)
    contextData[2]=squawk+": Urgence";
  else if (squawk==7600)
    contextData[2]=squawk+": Panne radio";
  else if (squawk==7500)
    contextData[2]=squawk+": Détournement";
  
  Date d = new Date(timestamp*1000);
  String dateFormat = formatter.format(d);
  contextData[3]= dateFormat;
}