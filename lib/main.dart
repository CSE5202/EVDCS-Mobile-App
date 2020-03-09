import 'package:flutter/material.dart';
import 'page1.dart';
import 'dart:async';

void main() {runApp(MaterialApp(
  home: MyAPP(),debugShowCheckedModeBanner: false,
));}
class MyAPP extends StatefulWidget {
  @override
  _MyAPPState createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  void initState(){
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      (){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) =>Page1(),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding( 
              child:Image.asset("images/tr.PNG",width: 260.0,height: 260.0,alignment: Alignment.center,),
              padding: EdgeInsets.only(top:110.0,left: 25),
              ),
            Padding(padding: EdgeInsets.only(top:145.0,left: 25),
               child: Text('Copyright © 2012E.C All rights reserved',style:TextStyle(
                      fontSize:12,color:Colors.grey,
                      
                    ))
            )
          ]
          
        )
        
        
  
      
      ),
     
      
    );
  }
}
