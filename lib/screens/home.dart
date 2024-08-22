import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/logo.png",
          height: 50,
          width: 100,  
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell( 
                onTap: (){},
                child: Icon(
                  Icons.search ,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ) ,
            const SizedBox(width: 10,) ,
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                height: 25,
                width: 25,
                color: Colors.blue,
              ),
            ) ,
            const SizedBox(width: 10,) ,
          ],
      ),
      body: Center(
        child: Text("home")
      ),
    );
  }
}