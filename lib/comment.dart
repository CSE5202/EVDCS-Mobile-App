import 'package:flutter/material.dart';
import 'dialog3.dart';
import 'dialog2.dart';
import 'package:project/utils/database_helper.dart';
import 'dart:io';

var commentmaplist;
int count6;
final dbHelper = DatabaseHelper.instance;
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
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      onPressed: (){//_insert5();
        showDialog(context: context,
                 builder:(BuildContext context)=>Dialog3());
               
      }),
    );
  }
ListView getList(){
  //_insert5();
  getCommentList();
  TextStyle titleStyle=Theme.of(context).textTheme.subhead;
  return ListView.builder(
    itemCount: count6,
    itemBuilder: (BuildContext context,int position){
      return Card(
        color:Colors.white,
        elevation:2.0,
        child:ListTile(
          title:Text(commentmaplist[position]['comment']),
          subtitle:Text(commentmaplist[position]['date']),
      onTap: (){showDialog(context: context,
                 builder:(BuildContext context)=>Dialog2( t1:  "",
                  t2: commentmaplist[position]['date'].toString()
                 , t4: commentmaplist[position]['comment'], 
                 t5: ''));}
       
        ),
      );
    }
  );
}

  void _insert5() async {

// row to insert

Map<String, dynamic> row = {

DatabaseHelper.col35 : '09/08/12',
DatabaseHelper.col36 : 'please improve... '

};

final id = await dbHelper.insert5(row);


}}  void getCommentList() async{
           commentmaplist=await dbHelper.queryAllRows5();
          count6=commentmaplist.length;
          
        }