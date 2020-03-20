
class Comment{
int id;
String date;
String comment;
Comment();
Comment.fromMapObject(Map<String,dynamic> map){
  this.id=map['id'];
  this.date=map['date'];
  this.comment=map['comment'];
}
}
