
class Assign{
int id;
String driver_id;
String date;
String time;
String source;
String destination;
String action;
Assign();
Assign.fromMapObject(Map<String,dynamic> map){
  this.id=map['id'];
  this.driver_id=map['driver_id'];
  this.date=map['date'];
  this.time=map['time'];
  this.source=map['source'];
  this.destination=map['destination'];
  this.action=map['action'];
}
}
