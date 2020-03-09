import 'package:flutter/material.dart';
import 'page2.dart';
class Setting extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.purple.withOpacity(0.5),
      title: Text('Setting', style: TextStyle(color: Colors.white70,fontSize: 20.0,fontWeight: FontWeight.bold,)
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Notification Setting",
            style: TextStyle(color: Colors.indigo,fontSize: 20.0,fontWeight: FontWeight.bold,),
            ),
            SwitchListTile(
              dense: true,
              activeColor: Colors.purple,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title: Text('Recieved notification'),
              onChanged: (val){},
            )
          ],

      ),
      ),
      
      
    );
  }}