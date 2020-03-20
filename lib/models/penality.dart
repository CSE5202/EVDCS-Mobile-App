
class Penality{
int id;
String driver_id;
String punished_date;
String reason;
String punished_by;
String paid_date;
String status;
Penality();
Penality.fromMapObject(Map<String,dynamic> map){
  this.id=map['id'];
  this.driver_id=map['driver_id'];
  this.punished_date=map['punished_date'];
  this.reason=map['reason'];
  this.punished_by=map['punished_by'];
  this.paid_date=map['paid_date'];
  this.status=map['status'];
}
}
