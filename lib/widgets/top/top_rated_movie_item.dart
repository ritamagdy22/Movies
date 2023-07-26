import 'package:flutter/cupertino.dart';
import 'package:movies/models/movies_response.dart';

class TopRatedMovieItem extends StatelessWidget {
  Movie movie;
  TopRatedMovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.all(12),
          // 7tete al round al fl sora
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Image.network(
              "https://image.tmdb.org/t/p/w500" + movie.backdropPath!),
        ),
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
      ],
    );
  }
}
