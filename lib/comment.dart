import 'package:flutter/material.dart';
import 'dialog3.dart';
class Comment extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Comments();
      }
    
    }
    
    class Comments extends State<Comment>{
        int count=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
          title: Text("Comment"),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
        }),
      ),
      body: getList(),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){
        showDialog(context: context,
                 builder:(BuildContext context)=>Dialog3());
               
      }),
    );
  }
ListView getList(){
  TextStyle titleStyle=Theme.of(context).textTheme.subhead;
  return ListView.builder(
    itemCount: count,
    itemBuilder: (BuildContext context,int position){
      return Card(
        color:Colors.white,
        elevation:2.0,
        child:ListTile(
          title:Text("Comment1"),
          subtitle:Text("Date"),
       
        ),
      );
    }
  );
}

}