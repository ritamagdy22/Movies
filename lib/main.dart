import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/home_layout.dart';
import 'package:movies/widgets/latest_movie/latest_movie_screen_navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeLayout.routename: (context) => HomeLayout(),
        LatestMovieScreenNavigator.RouteName :(context)=>LatestMovieScreenNavigator()
      },
      initialRoute: HomeLayout.routename,
    );
  }
}
