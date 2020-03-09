import 'package:flutter/material.dart';
import 'page2.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
class page1 extends StatelessWidget {
 
   Widget build(BuildContext context)  {
    return MaterialApp(
      home:Scaffold(
        //backgroundColor: Colors.purple.withOpacity(0.5),
        body: Stack(
          children: <Widget>[
            Container(
              height: 650,
              child: RotatedBox(quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig( 
                  gradients: [
                    [Colors.deepPurple,Colors.blue.shade200],
                    [Colors.indigo.shade200, Colors.blueAccent.shade200],
                    ],
                  durations: [19440,10800], 
                  heightPercentages:[ 0,20,0,25],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight
               
              ),
              waveAmplitude: 0,
              size: Size(
                double.infinity,
                double.infinity,
              ),
              ),
            ),
            ),
            ListView(children: <Widget>[
              Container(
                height:400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Text("Please insert your phone number to get activation key",textAlign: TextAlign.center,style: TextStyle(color: Colors.white70,fontWeight:FontWeight.bold,fontSize:18.0) ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right:30, top: 50),
                      elevation: 11,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone, color: Colors.black26,),
                          hintText: "phone no",
                          hintStyle: TextStyle( 
                            color: Colors.black26,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)

                        ),
                      )
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        onPressed: (){
               Navigator.push(
          context, MaterialPageRoute(builder: (context) =>page2()
          ),
        );
            },
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                      color: Colors.white70,
                      elevation: 11,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Text("send", style: TextStyle(color: Colors.white70),),                    
                    ),
                    ),

                  ],
                ),

              )
             
          ],
        )
       ]
      ),
  ));
  }

  
}