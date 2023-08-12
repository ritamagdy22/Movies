import 'package:flutter/material.dart';
import 'package:movies/models/movies_response.dart';

class TopMovieScreenNavigator extends StatelessWidget {
  static const String RouteName = "TopMovieScreenNavigator";

  @override
  Widget build(BuildContext context) {
    var movie = ModalRoute.of(context)!.settings.arguments as Movie;

    return Scaffold(
      appBar: AppBar(
        title: Text("Top movies"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(5),
            height: 220,
            // 7tete al round al fl sora
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Image.network(movie.backdropPath!),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  movie.title ?? '',
                  style: TextStyle(fontSize: 20),

                ),
                SizedBox(height: 30),
                Text(
                  movie.overview ?? '',
                  style: TextStyle(fontSize: 20),
                ),

                SizedBox(height: 15),

                Text(
                  movie.backdropPath ?? '',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.end,
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
