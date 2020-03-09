import 'package:flutter/material.dart';
class Dialog2 extends StatelessWidget {
  final String t1,t2,t4,t5;

  const Dialog2({
    @required this.t1, 
    @required this.t2,
    @required this.t4, 
    @required this.t5,

     }) ;
  @override
  Widget build(BuildContext context) {
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
                              
                              Text(t1,style:TextStyle(
                                color:Colors.black87,
                                fontSize:16
                              )),
                               Divider(),
                              Text(t2,style:TextStyle(
                                color:Colors.grey,
                                fontSize:14
                               )),
                               Divider(),
                              Text(t4,style:TextStyle(
                                color:Colors.black87,
                                fontSize:16
                              )),
                               Divider(),
                              Text(t5,style:TextStyle(
                                color:Colors.grey,
                                fontSize:14
                              )),
                               Divider(),
                               RaisedButton(onPressed: (){
                                 Navigator.of(context).pop();
                               },
                               color:Colors.white,
                               shape:RoundedRectangleBorder(
                                 borderRadius:BorderRadius.circular(20)
                               ),
                               child: Text('Got it',style: TextStyle(
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