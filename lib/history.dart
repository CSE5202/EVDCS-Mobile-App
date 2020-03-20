import 'package:flutter/material.dart';
import 'dialog2.dart';
import 'package:project/utils/database_helper.dart';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:project/models/deploy.dart';
import 'package:project/models/assign.dart';
import 'package:project/models/attendance.dart';
import 'package:project/models/penality.dart';
  DatabaseHelper dbHelper = DatabaseHelper.instance;
  
  List<Deploy> deployList;
  var deploymaplist;
  var assignmaplist;
  var attendancemaplist;
  var penalitymaplist;
int count,count2,count3,count4;

class History extends StatelessWidget{

   @override
  Widget build(BuildContext context){
    
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: choices.length, 
      child: Scaffold(
      appBar: AppBar(
        title:Text('History',),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
        }),
        bottom: TabBar(isScrollable: true,
          tabs: choices.map<Widget>((Choice choice){
            return Tab(text:choice.title,
            icon:Icon(choice.icon));
          }).toList(),
      ),
    ),
    body: TabBarView(children: choices.map((Choice choice){
      return Padding(padding: EdgeInsets.all(0),
      child:ChoicePage(
        choice: choice,
      ));
    }).toList(),
    ),
    )
    ));
    }}
    class Choice{
      
      final String title;
      final IconData icon;
      const Choice({
        @required this.title,
        @required this.icon,
      });
    }
     const List<Choice> choices =<Choice>[
        Choice(title: 'Deployment',icon: Icons.directions_car),
        Choice(title: 'Assignment',icon: Icons.directions_bus),
        Choice(title: 'Attendance',icon: Icons.timeline),
        Choice(title: 'Penality',icon: Icons.note),
      ];
      class ChoicePage extends StatelessWidget {
        final Choice choice;
  const ChoicePage({Key key, this.choice}) : super(key: key);
        @override
           
      Widget build(BuildContext context)   {
        //_insert();
         getDeployList();
         // _insert2();
         getAssignList();
         // _insert3();
         getAttendanceList();
         // _insert4();
         getPenalityList();
          String h=choice.title;
          if (h=='Deployment') {
            return Container(
            width: MediaQuery.of(context).size.width,
              child:ListView.builder(
    itemCount: count,
    itemBuilder: (BuildContext context,int position){
      return Card(
        color:Colors.white,
        elevation:2.0,
        child:ListTile(
          
          title:Text("Route: "+deploymaplist[position]['source']+" to "+deploymaplist[position]['destination']),
          subtitle:Text(" year: "+ deploymaplist[position]['year']),
      onTap: (){showDialog(context: context,
                 builder:(BuildContext context)=>Dialog2( t1: 'Deployment '+ deploymaplist[position]['id'].toString(),
                  t2: "Route: "+deploymaplist[position]['source']+" to "+deploymaplist[position]['destination']
                 , t4: 'Year: '+ deploymaplist[position]['year']+"   Lap: "+ deploymaplist[position]['lap'], 
                 t5: 'Route type: '+deploymaplist[position]['routetype']));},
        ),
        );
      
    }
  )
          );  
          }
          else if(h=='Assignment'){
                 return Container(
            width: MediaQuery.of(context).size.width,
              child:ListView.builder(
    itemCount: count2,
    itemBuilder: (BuildContext context,int position){
      return Card(
        color:Colors.white,
        elevation:2.0,
        child:ListTile(
          
          title:Text("Route: "+assignmaplist[position]['source']+" to "+deploymaplist[position]['destination']),
          subtitle:Text(" Date: "+ assignmaplist[position]['date']+"\nTime: "+assignmaplist[position]['time']),
      onTap: (){showDialog(context: context,
                 builder:(BuildContext context)=>Dialog2( t1: 'Assignment '+ assignmaplist[position]['id'].toString(),
                  t2: "Route: "+assignmaplist[position]['source']+" to "+assignmaplist[position]['destination']
                 , t4: 'Date: '+ assignmaplist[position]['date']+"   Time: "+ assignmaplist[position]['time'], 
                 t5: 'Action: '+assignmaplist[position]['action']));},
        ),
        );
      
    }
  )
          );
          }
          else if(h=='Attendance'){
                 return Container(
            width: MediaQuery.of(context).size.width,
              child:ListView.builder(
    itemCount: count4,
    itemBuilder: (BuildContext context,int position){
      return Card(
        color:Colors.white,
        elevation:2.0,
        child:ListTile(
          
          title:Text(attendancemaplist[position]['date']),

      onTap: (){showDialog(context: context,
                 builder:(BuildContext context)=>Dialog2( t1: 'Attendance '+ attendancemaplist[position]['id'].toString(),
                  t2: "Date: "+attendancemaplist[position]['date']

                  ,t4: 'Time: '+ attendancemaplist[position]['time'],
                 t5: 'Status: '+attendancemaplist[position]['present']));},
        ),
        );
      
    }
  )
          );
          }
          else if(h=='Penality'){
                 return Container(
            width: MediaQuery.of(context).size.width,
              child:ListView.builder(
    itemCount: count3,
    itemBuilder: (BuildContext context,int position){
      return Card(
        color:Colors.white,
        elevation:2.0,
        child:ListTile(
          
          title:Text("Punished by: "+penalitymaplist[position]['punished_by']),
          subtitle:Text( penalitymaplist[position]['punished_date']),
      onTap: (){showDialog(context: context,
                 builder:(BuildContext context)=>Dialog2( t1: 'Penality '+ penalitymaplist[position]['id'].toString(),
                  t2: "Punished by: "+penalitymaplist[position]['punished_by']
                 , t4: 'Reason: '+ penalitymaplist[position]['reason'], 
                 t5: 'Punished Date: '+penalitymaplist[position]['punished_date']));},
        ),
        );
      
    }
  )
          );
          }
        }
            void _insert() async {

// row to insert

Map<String, dynamic> row = {

DatabaseHelper.col9 : 'Dr/0001/01/12',
DatabaseHelper.col10 : '2012',
DatabaseHelper.col11 : '1',
DatabaseHelper.col12 : 'piassa',
DatabaseHelper.col13 : 'bole',
DatabaseHelper.col14 : 'good'

};

final id = await dbHelper.insert1(row);

print('inserted row id: $id');

}
     void _insert2() async {

// row to insert

Map<String, dynamic> row = {

DatabaseHelper.col16 : 'Dr/0001/01/12',
DatabaseHelper.col17 : '20/06/12',
DatabaseHelper.col18 : '03:23',
DatabaseHelper.col19 : 'piassa',
DatabaseHelper.col20 : 'bole',
DatabaseHelper.col21 : 'accept'

};

final id = await dbHelper.insert2(row);
}
void _insert3() async {

// row to insert

Map<String, dynamic> row = {

DatabaseHelper.col23 : 'Dr/0001/01/12',
DatabaseHelper.col24 : '20/06/12',
DatabaseHelper.col25 : 'Over carry',
DatabaseHelper.col26 : 'inspector nigatu tola',
DatabaseHelper.col27 : '05/07/12',
DatabaseHelper.col28 : 'free'

};

final id = await dbHelper.insert3(row);
}
void _insert4() async {
// row to insert
Map<String, dynamic> row = {
DatabaseHelper.col30 : 'Dr/0001/01/12',
DatabaseHelper.col31 : '20/06/12',
DatabaseHelper.col32 : '03:23',
DatabaseHelper.col33 : 'present'
};
final id = await dbHelper.insert4(row);
}
      }

        void getDeployList() async{
           deploymaplist=await dbHelper.queryAllRows1();
          count=deploymaplist.length;
         /* Deploy dep=new Deploy();
          for(int i=0;i<count;i++){
            dep=Deploy.fromMapObject(deploymaplist[i]);
           
          }
          g.add("dep");*/
        }    
     void getAssignList() async{
           assignmaplist=await dbHelper.queryAllRows2();
          count2=assignmaplist.length;
          
        } 
        void getAttendanceList() async{
           attendancemaplist=await dbHelper.queryAllRows4();
          count4=attendancemaplist.length;
          
        } 
        void getPenalityList() async{
           penalitymaplist=await dbHelper.queryAllRows3();
          count3=penalitymaplist.length;
          
        } 