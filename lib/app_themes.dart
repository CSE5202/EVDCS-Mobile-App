import 'package:flutter/material.dart';

enum AppTheme{
  White,Dark,Lightgreen,Darkgreen
}
String enumName(AppTheme anyEnum){
  return anyEnum.toString().split('.')[1];
}
final appThemeData = {
  AppTheme.White : ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white
  ),
  AppTheme.Dark : ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white
  ),
  AppTheme.Darkgreen : ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green
  ),
  AppTheme.Lightgreen : ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green
  ),


};