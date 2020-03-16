import 'package:flutter/material.dart';

class History extends StatelessWidget{
   @override
  Widget build(BuildContext context){
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: choices.length, 
      child: Scaffold(
      appBar: AppBar(
        title:Text('History',),
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
        
        Widget build(BuildContext context) {
          String h=choice.title;
          return Container(
            width: MediaQuery.of(context).size.width,
              child:ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: 16,
            
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index)=>Container(
              
              width:MediaQuery.of(context).size.width,
              child: Card(
             
                child: Container(
              width:MediaQuery.of(context).size.width,
             padding:EdgeInsets.symmetric(horizontal:15.0,vertical:10.0),
              child:  Text(h, style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,color: Colors.black54),),          
                ),
              ),
            ),

          )
          );
        }
      }
    
     