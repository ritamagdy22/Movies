import 'package:flutter/material.dart';
import 'package:movies/home_layout.dart';
import 'package:movies/widgets/latest_movie/latest_movie_screen_navigator.dart';
import 'package:movies/widgets/popular/popular_movie_screen_navigation.dart';
import 'package:movies/widgets/top/Top_Movie_Screen_Navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeLayout.routename: (context) => HomeLayout(),
        LatestMovieScreenNavigator.RouteName: (context) => LatestMovieScreenNavigator(),
        PopularMovieScreenNAvigator.RouteName:(context)=>PopularMovieScreenNAvigator(),
        TopMovieScreenNavigator.RouteName:(context)=>TopMovieScreenNavigator()
      },
      initialRoute: HomeLayout.routename,
    );
  }
}
