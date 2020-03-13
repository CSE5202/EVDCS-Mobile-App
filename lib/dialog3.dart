import 'package:flutter/material.dart';
class Dialog3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    bool _throwShotAway;
    
    return Dialog( shape: RoundedRectangleBorder(
                     borderRadius:BorderRadius.circular(20),
                     ),
                     
                    child: Stack(
                      children:<Widget>[
                        Container(
                        width: 250,
                          padding:EdgeInsets.all(10),
                          decoration:BoxDecoration(
                            color:Colors.white,
                            shape:BoxShape.rectangle,
                            borderRadius:BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color:Colors.black54,
                                blurRadius:10.0,
                                offset:const Offset(0.0,10.0)
                              )
                            ]
                          ),
                          child: Column(
                            mainAxisSize:MainAxisSize.min,
                            children:<Widget>[
                            
                              Text('Comment' ,style :TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: Colors.blueAccent),),
                              Divider(),
                              TextField(maxLines: 10,
                                decoration:InputDecoration(
                                hintText:'Comment.....',
                                hintStyle: TextStyle(
                                color:Colors.white70,
                                fontSize:16.0
                                ),)),
                           Divider(),
                               RaisedButton(onPressed: (){
                                 Navigator.of(context).pop();
                               },
                               color:Colors.white,
                               shape:RoundedRectangleBorder(
                                 borderRadius:BorderRadius.circular(20)
                               ),
                               child: Text('Send',style: TextStyle(
                                 color: Colors.blueAccent,
                                 
                               ),),
                               )
                              
                              
                            ]
                          )                       ,
                        )

                      ]
                    ), 
                    
                 );
      
  }
}