import 'package:flutter/material.dart';
import 'package:movies/api_manager.dart';
import 'package:movies/models/movies_response.dart';
import 'package:movies/widgets/popular_section.dart';

class HomeScreen extends StatelessWidget {
  static const String routename = "home-screen";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: PopularSection()),
      ],
    );
  }
}