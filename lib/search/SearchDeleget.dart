import 'package:flutter/material.dart';

import '../api_manager.dart';
import '../models/movies_response.dart';
import '../widgets/popular/popular_movie_item.dart';

class MovieSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () => showResults(context),
          icon: Icon(
            Icons.search,
            size: 25,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(
          Icons.close,
          size: 30,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Text("Suggestions"),
      );
    } else {
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
              itemBuilder: ((context, index) {
                return PopularMovieItem(movie: movies[index]);
              }),
              itemCount: movies.length,
            );
          }));
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Text("Suggestions"),
      );
    } else {
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
              itemBuilder: ((context, index) {
                return PopularMovieItem(movie: movies[index]);
              }),
              itemCount: movies.length,
            );
          }));
    }
  }
}
