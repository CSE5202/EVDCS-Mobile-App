import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'page1.dart';
import 'package:provider/provider.dart';
import 'package:project/theme_manager.dart';
//import 'package:project/app_themes.dart';
//import 'dart:async';

void main() {runApp(MaterialApp(
  home: splashscreen(),
));}


class splashscreen extends StatefulWidget {
  @override
   splashscreenState createState() =>  splashscreenState();
}
const brightyellow = Color(0xFFFFD300);
const darkyellow = Color(0xFFFFB900);
class  splashscreenState extends State <splashscreen> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkyellow.withOpacity(0.6),
      body: Column(
        children: [
          Flexible(
            flex: 8,
            child: FlareActor(
              'images/assets/flare/bus.flr',
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: 'driving',
            ),
          ),
          Flexible(
            flex: 2,
            child: RaisedButton(
              color: darkyellow,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                'Tap here to proceed',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: (){
               Navigator.push(
          context, MaterialPageRoute(builder: (context) =>page1(),
          ),
        );
            },//=>  Navigator.push(context, MaterialPageRoute(builder: (context)=>authentication()))
            ),
          ),
        ],
      ),
    );
  }
} 
