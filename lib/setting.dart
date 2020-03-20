import 'package:flutter/material.dart';
import 'package:project/theme_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ThemeApp extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return MultiProvider(
     providers: [
       ChangeNotifierProvider<ThemeChanger>(
    //Here we provid(e our ThemeManager to child widget tree
    create: (_) => ThemeChanger(ThemeData.dark()), 
     
       )],
       child:  MaterialAppwithTheme(), 
       );
       }}
     
class MaterialAppwithTheme extends StatelessWidget {
  const MaterialAppwithTheme({
    Key key,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme =Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: Setting(),
    );
  }
}



class Setting extends StatelessWidget {

   @override
  Widget build(BuildContext context) {

    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.blueAccent.withOpacity(0.5),
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
              activeColor: Colors.blueAccent,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title: Text('Recieved notification'),
              onChanged: (val){},
            ),
            Text("Theme Setting",
            style: TextStyle(color: Colors.indigo,fontSize: 20.0,fontWeight: FontWeight.bold,),
            ),
            SwitchListTile(
              dense: true,
              activeColor: Colors.blue,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title: Text(_themeChanger.getTheme().brightness ==Brightness.dark ? 'dark mode':'light mode'),
              onChanged: (val){
                _themeChanger.setTheme(ThemeData.light());
                
              //_themeChanger.switchTheme();

              },
            ),
            SwitchListTile(
              dense: true,
              activeColor: Colors.blueAccent,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title: Text(_themeChanger.getTheme().brightness ==Brightness.dark ? 'dark mode':'light mode'),
              onChanged: (val){
                         _themeChanger.setTheme(ThemeData.dark());
              },
            )
          ],

      ),
      ),
      
      
    );
  }
}
