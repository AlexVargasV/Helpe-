import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'home.dart';
void main() => runApp(Aplication());
class Aplication extends StatelessWidget{
@override
Widget build(BuildContext context){
  return MaterialApp(
    title: 'Navigation Drawer',
    home : Home(),
    theme: ThemeData(
      primaryColor: Color(0xFF2F008E),
      accentColor: Color(0xFFFDD303)
    )
  );
}

}
