import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project/dialog2.dart';
import 'package:project/history.dart';
import 'page1.dart';
import 'setting.dart';
import 'history.dart';
import 'dialog1.dart';
import 'dialog2.dart';
import 'comment.dart';
class Home extends StatelessWidget{
  String h=null;
@override
  Widget build(BuildContext context){
    var userAccountsDrawerHeader = new UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight:Radius.circular(20)),
        color: Colors.blueAccent,
        
      ),
                accountName: Text("Meskerem Abebaw"),
                accountEmail: Text('0925866216'),
                currentAccountPicture: CircleAvatar(backgroundColor:Colors.white,
                child:Image.asset('images/i1.jpg',width: 50,)),

              );
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent,
        elevation: 15,
        
        ),
        drawer: Drawer(
          child: ListView(
            children:<Widget>[
              userAccountsDrawerHeader,
              
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: (){Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Home()));
                
                },
              ),
              Divider(),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: (){
                 showDialog(context: context,
                 builder:(BuildContext context)=>Dialog1( t1: 'Meskerem Abebaw', t2: "Dr/0001/01/12"
                 , t3: 'Plate no: 21345', t4: 'Subcity: Arada', t5: 'Taxi type: Good', t6: 'Phone: 0925866216', t7: 'Status: Good', t8: 'images/i1.jpg',));
                },
              ),
              Divider(),
              ListTile(
                title: Text('History'),
                leading: Icon(Icons.history),
                onTap: (){Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>History()));
                
                },
              ),
              Divider(),
              ListTile(
                title: Text('Comment'),
                leading: Icon(Icons.comment),
                onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Comment()));
                },
              ),
              
              Divider(),
              ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
                onTap: (){Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Setting()));
                
                },
              ),
              
              Divider(),
              ListTile(
                title: Text('Help'),
                leading: Icon(Icons.help),
                onTap: (){showDialog(context: context,
                 builder:(BuildContext context)=>Dialog2( t1: 'Driver app guide', t2: "  	To ensure the provision of a modern, integrated and safe Road transport services to meet the needs of all the communities for strong and unitary economic and political system in Ethiopia"
                 , t4: 'Subcity:Arada', t5: 'More info....',));
                
                },
              ),

              Divider(),
              ListTile(
                title: Text('About us'),
                leading: Icon(Icons.account_box),
                onTap: (){showDialog(context: context,
                 builder:(BuildContext context)=>Dialog2( t1: 'Done By', t2: "ASTU"
                 , t4: 'GC', t5: '2012E.C'));
                
                },
              ),
             
              Divider(),
              ListTile(
                title: Text('Quit'),
                leading: Icon(Icons.cancel),
                onTap: (){exit(0);
                
                },
              ),

            ]
          ),
        ),
        body: Column(
         
                children: <Widget>[
               
                 
        Container(
          height:170,width: 320,
             padding: const EdgeInsets.all(18),
          child:PageView(
            controller:PageController(viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            
            children: <Widget>[
              Container(
                
          padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  
                 image: DecorationImage(
                   image: AssetImage('images/t1.jpg'),fit: BoxFit.cover
                 )
                  
                )
              ),
              Container(padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('images/t2.jpg'),fit: BoxFit.cover
                 )
                  
                )
              ),
              Container(padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('images/t3.jpg'),fit: BoxFit.cover
                 )
                  
                )
              ),
              Container(padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('images/t4.jpg'),fit: BoxFit.cover
                 )
                  
                )
              ),
              Container(padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('images/t2.jpg'),fit: BoxFit.cover
                 )
                  
                )
              ),
              Container(padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('images/t1.jpg'),fit: BoxFit.cover
                 )
                  
                )
              
          ),
          
          ]
          )
          
        ),
        Container(
          height:283,width: 350,padding: const EdgeInsets.all(0),
          child:PageView(
            controller:PageController(viewportFraction: 0.9),
            scrollDirection: Axis.vertical,
            pageSnapping: true,
            children: <Widget>[
        ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: 4,
            
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index)=>Container(
              
              width:MediaQuery.of(context).size.width,
              padding:EdgeInsets.symmetric(horizontal:5.0,vertical:3.0),
              child: Card(
                elevation:4,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                
                child: Container(
              width:MediaQuery.of(context).size.width,
             padding:EdgeInsets.symmetric(horizontal:2.0,vertical:14.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                crossAxisAlignment:CrossAxisAlignment.start,
                children:<Widget>[
                  Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children:<Widget>[SizedBox(width: 3,),
                      Column(
                       crossAxisAlignment:CrossAxisAlignment.start,
                        
                       children:<Widget>[
                         
                         Text('Deployment', style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: Colors.black54),),
                         
                         Text('Lap 3', style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Colors.grey),),
                       
                       ]
                      ),
                      SizedBox(height:20,width: 100,),
                    Container(
                      alignment:Alignment.center,
                     // padding:EdgeInsets.symmetric(horizontal:40.0,),
                      child: FlatButton(onPressed: (){showDialog(context: context,
                 builder:(BuildContext context)=>Dialog2( t1: 'Recent Deployment', t2: "Source station: Piassa"
                 , t4: 'Destination Station: Bole', t5: 'Route type: Good',));
                }, 
                      color: Colors.blueAccent[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("View",style: TextStyle(color:Colors.white),)),
                    )
                    ]
                  ),
                ],
              ),                  
                ),
              ),
            ),

          )]))
        ])
        
    );}}
   