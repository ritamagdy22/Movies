import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/movies_response.dart';

import 'Top_Movie_Screen_Navigator.dart';

class TopRatedMovieItem extends StatelessWidget {
  Movie movie;

  TopRatedMovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.of(context).pushNamed(TopMovieScreenNavigator.RouteName,arguments: movie),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(12),
              // 7tete al round al fl sora
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Image.network(
                  "https://image.tmdb.org/t/p/w500" + movie.backdropPath!),
            ),
          ),
          Text(
            movie.title ?? '',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

/*
 Text(
            movie.title ?? '',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            movie.overview ?? '',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            movie.originalLanguage ?? "",
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.end,
          ),
 */