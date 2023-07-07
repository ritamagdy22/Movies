import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/home_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeLayout.routename: (context) => HomeLayout(),
      },
      initialRoute: HomeLayout.routename,
    );
  }
}
