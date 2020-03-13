import 'package:flutter/material.dart';
import 'Home.dart';
import 'dart:async';
class Page2 extends StatelessWidget{
@override
  Widget build(BuildContext context){
    return Scaffold(
    
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //Navigator.push(context, new MaterialPageRoute(builder: (context)=>Page2()));
      //},),
     backgroundColor: Colors.blueAccent,
      body: Container(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: Myclipper(),
              child: Container(
                height: 320.0,
                decoration: BoxDecoration(
                  color:Colors.white,
                
              ), 
              child:Center(
                child:  Image.asset("images/tr.PNG",width: 200.0,height: 200.0,),
              )
             
              )
            ),
            SizedBox(height: 0.0,),
        Container(width: 200,
          child: Column(
            children:<Widget>[
          
            TextField(
              decoration:InputDecoration(
                hintText:'Activation code',
                hintStyle: TextStyle(
                  color:Colors.white70,
                  fontSize:16.0
                ),
                
                prefixIcon: Icon(Icons.lock),
                
              ),
            ),

            SizedBox(height: 25.0,),
            RaisedButton(onPressed: (){
               Navigator.push(
          context, MaterialPageRoute(builder: (context) =>Home(),
          ),
        );
            },
            splashColor: Colors.orangeAccent,
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Text("Activate",style:TextStyle(
              fontSize:18,color:Colors.blueAccent,fontWeight: FontWeight.w400
            )),
          )])
            )
          ]
        ),
      )
    );
}}
class Myclipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    var path= new Path();
    path.lineTo(0, size.height-150);
    var controlpoint= Offset(50, size.height-70);
    var endpoint= Offset(size.width/2, size.height-70);
    path.quadraticBezierTo(controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, size.height-70);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
