import 'package:flutter/material.dart';
import 'package:movies/api_manager.dart';
import 'package:movies/models/movies_response.dart';
import 'package:movies/widgets/top/top_rated_movie_item.dart';

class TopRatedSection extends StatelessWidget {
  TopRatedSection();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MoviesResponse>(
      future: ApiManager.getTopRatedMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Column(
            children: [
              Text("error"),
              ElevatedButton(
                onPressed: () {},
                child: Text("Try again ma3lsh"),
              ),
            ],
          );
        }
        var movies = snapshot.data?.movies ?? [];

        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Top Rated Movies",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded( // Wrap the ListView.builder with Expanded
                child: Container(
                  height: 250, // Adjust container height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movies.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TopRatedMovieItem(movie: movies[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}



