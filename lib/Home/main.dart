import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Home/HomeScreen.dart';

void main () {

  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        HomeScreen.routename:(context)=>HomeScreen(),


      },
      initialRoute: HomeScreen.routename,


    );
  }
}