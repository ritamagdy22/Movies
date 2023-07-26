import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LatestMovieScreenNavigator extends StatelessWidget{
  static const String RouteName = "MovieScreenNavigator";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title:Text("LatestMovieScreenNavigator") ,
      ),
    );
  }
}