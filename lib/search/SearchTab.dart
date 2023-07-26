import 'package:flutter/material.dart';
import 'package:movies/search/SearchDeleget.dart';

class SearchTab extends StatelessWidget {
  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(170.20)),
        Text("Feel free to search your favourite movie"),
        Center(
          child: IconButton(onPressed: ()=>showSearch(context: context, delegate: MovieSearch()),
              icon: Icon(Icons.search, size: 30,)),
        )

      ],
    );
  }
}

//TextField(
//             decoration: InputDecoration(
//                 hintText: "search your favourite movie",
//                 hintStyle: TextStyle(color: Colors.grey.shade600),
//                 prefixIcon: IconButton(
//                     onPressed: ()=>showSearch(context: context, delegate: MovieSearch()),
//                     icon: Icon(Icons.search, size: 32,)
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey.shade100,
//                 contentPadding: EdgeInsets.all(8),
//                 enabledBorder:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
//           ),
