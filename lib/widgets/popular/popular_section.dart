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
          return Scaffold(

            body: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: ((context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: PopularMovieItem(movie: movies[index])),
                    ))),
          );
        }));
  }
}
