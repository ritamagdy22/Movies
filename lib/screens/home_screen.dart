import 'package:flutter/material.dart';
import 'package:movies/widgets/latest_movie/latest_section.dart';
import 'package:movies/widgets/popular/popular_section.dart';
import 'package:movies/widgets/top/top_rated_section.dart';

class HomeScreen extends StatelessWidget {
  static const String routename = "home-screen";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: PopularSection()),
        Expanded(child: LatestSection()),
        Expanded(child: TopRatedSection())
      ],
    );
  }
}
