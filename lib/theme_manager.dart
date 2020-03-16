import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

//import 'package:project/app_themes.dart';
//import 'package:shared_preferences/shared_preferences.dart';
class ThemeChanger with ChangeNotifier{
  ThemeData _themeData;
  ThemeChanger(this._themeData);
  ThemeData getTheme()=> _themeData;

  setTheme(ThemeData theme){
    _themeData = theme;
    notifyListeners();
  }
  
  /*SharedPreferences _prefs;
  static const  _themeField = 'theme';
  static const int _lightThemeInt = 0;
  static const int _darkThemeInt = 1;

  final _lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    accentColor: Colors.blue,
    primaryIconTheme: IconThemeData(color: Colors.black ),
  );
   final _darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.white,
    accentColor: Colors.blue,
    primaryIconTheme: IconThemeData(color: Colors.white),
  );

 /* ThemeChanger(){
    _themeData = _darkTheme;
    asyncInit();

  }*/

  Future<void> asyncInit() async{
    _prefs = await SharedPreferences.getInstance();
    int theme = (_prefs.getInt(_themeField) ?? 0);
    if(theme == _lightThemeInt){
      _themeData = _lightTheme;
    }else{
      _themeData = _darkTheme;
    }
    notifyListeners();
  }
  

  void switchTheme(){
    if(_themeData == _lightTheme){
      _themeData = _darkTheme;
      _prefs.setInt(_themeField, _darkThemeInt);
    }else{
      _themeData = _lightTheme;
       _prefs.setInt(_themeField, _lightThemeInt);
    }
    notifyListeners();
  }*/
}
