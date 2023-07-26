import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/screens/home_screen.dart';

import 'package:movies/tabs/BrowserTab.dart';
import 'package:movies/tabs/LaterTab.dart';
import 'package:movies/search/SearchTab.dart';

class HomeLayout extends StatefulWidget {
  static const String routename = "home-layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  //lih in ? 3shan 3obara 3an list
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Movies",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),


      ),



      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,

        currentIndex: selectedindex,
        onTap: (index) {
          selectedindex = index;
          setState(() {});
        }, // This is all you need!
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.browser_updated_sharp), label: "Browser"),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later), label: "Later"),
        ],
      ),
      body: tabs[selectedindex],
    );
  }

  List<Widget>tabs =[
   HomeScreen(), SearchTab(),BrowserTab(),LaterTab()

  ];
}
