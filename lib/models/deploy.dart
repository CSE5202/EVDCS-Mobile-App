
class Deploy{
int id;
String driver_id;
String year;
String lap;
String source;
String destination;
String routetype;
Deploy();
Deploy.fromMapObject(Map<String,dynamic> map){
  this.id=map['id'];
  this.driver_id=map['driver_id'];
  this.year=map['year'];
  this.lap=map['lap'];
  this.source=map['source'];
  this.destination=map['destination'];
  this.routetype=map['routetype'];
}
}
