import 'package:flutter/material.dart';
import 'package:movies/Model/Api_Manager.dart';
import 'package:movies/Model/SourceResponse.dart';

class FilmDetails extends StatelessWidget {
  static const String routename = "filmdetails";

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
        future: ApiManager.getSources(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("Something went wrong"),
                ElevatedButton(onPressed: () {}, child: Text("Try again"))
              ],
            );
          }

          if (snapshot.data?.page != 'ok') {
            // page not okay ()
            return Column(
              children: [
                Text("Error from server"),
                ElevatedButton(onPressed: () {}, child: Text("Error from server"))
              ],
            );
          }

          var sourceslist = snapshot.data?.page ?? [];
          return ListView(scrollDirection: Axis.horizontal,
              children: [


          ]);
        }));
  }
}
