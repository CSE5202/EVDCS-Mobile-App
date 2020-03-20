
class Attendance{
int id;
String driver_id;
String date;
String time;
String present;
Attendance();
Attendance.fromMapObject(Map<String,dynamic> map){
  this.id=map['id'];
  this.driver_id=map['driver_id'];
  this.date=map['date'];
  this.time=map['time'];
  this.present=map['present'];
}
}
