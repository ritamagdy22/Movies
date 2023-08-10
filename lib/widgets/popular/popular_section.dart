import 'package:flutter/material.dart';
import 'package:movies/api_manager.dart';
import 'package:movies/models/movies_response.dart';
import 'package:movies/widgets/popular/popular_movie_item.dart';

class PopularSection extends StatelessWidget {
  PopularSection();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MoviesResponse>(
        future: ApiManager.getPopularMovies(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("error"),
                ElevatedButton(
                    onPressed: () {}, child: Text("Try again ma3lsh"))
              ],
            );
          }
          var movies = snapshot.data?.movies ?? [];
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return PopularMovieItem(movie: movies[index]);
            }),
            itemCount: movies.length,
          );
        }));
  }
}
