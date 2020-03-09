import 'package:flutter/material.dart';
class Dialog1 extends StatelessWidget {
  final String t1,t2,t3,t4,t5,t6,t7,t8;

  const Dialog1({
    @required this.t1, 
    @required this.t2,  
    @required this.t3,
    @required this.t4, 
    @required this.t5,  
    @required this.t6,
    @required this.t8,
    @required this.t7

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
                              Image.asset(t8,width: 40.0,height: 40.0,),
                              Divider(),
                              Text(t1,style:TextStyle(
                                color:Colors.black87,
                                fontSize:16
                              )),
                               Divider(),
                              Text(t2,style:TextStyle(
                                color:Colors.grey,
                                fontSize:14
                               )) ,
                              Text(t3,style:TextStyle(
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
                              Text(t6,style:TextStyle(
                                color:Colors.grey,
                                fontSize:14
                              )),
                               Divider(),
                              Text(t7,style:TextStyle(
                                color:Colors.black87,
                                fontSize:16
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