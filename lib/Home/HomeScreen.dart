

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Home/Film_Details_Screen.dart';
import 'package:movies/Model/Api_Manager.dart';

class HomeScreen extends StatefulWidget{

  static const String routename = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle:true ,
        backgroundColor: Colors.blueGrey,
        title:  Text("Movie App Project",
        style: TextStyle(fontSize: 20,
            color: Colors.white,
        ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,

        currentIndex: selectedindex,
        onTap: (index){
          selectedindex =index;
          setState(() {

          });
        },// This is all you need!
        items: [
          BottomNavigationBarItem
            (icon: Icon(Icons.home),
             label: "Home"),

          BottomNavigationBarItem
            (icon: Icon(Icons.search),
              label: "search"),

          BottomNavigationBarItem
            (icon: Icon(Icons.browser_updated_sharp),
              label: "Browser"),

          BottomNavigationBarItem
            (icon: Icon(Icons.watch_later),
              label: "Later"),

        ],
      ),

      body: FilmDetails() ,
    );
  }
}

