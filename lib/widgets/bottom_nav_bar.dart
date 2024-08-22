import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home.dart';
import 'package:netflix_clone/screens/more_screen.dart';
import 'package:netflix_clone/screens/search_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // backgroundColor: Colors.black,
        bottomNavigationBar: Container(
          height: 70,
          child:const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ) ,
            
            Tab(
              icon: Icon(Icons.search),
              text: "Search",
            ) ,
            Tab(
              icon: Icon(Icons.photo_library_outlined),
              text: "New & Hot",
            ) ,

          ] ,
          labelColor: Colors.white, 
           indicatorColor: Colors.transparent,
           unselectedLabelColor: Color(0xff999999),

           ),
        ) ,
        body: TabBarView(children: [
          Home() ,
          SearchScreen() ,
          MoreScreen() ,
        ]),
      ));
  }
}