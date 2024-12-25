import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //to remove debug sign
      debugShowCheckedModeBanner: false,
      title: 'The first flutter project',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        //put title of the page and style it
        title: const Text(
          "The first flutter project",
          style: TextStyle(color: Colors.white),
        ),
        //centeralize title
        centerTitle: true,
      ),
      //use column to put widgets vertically
      body: Column(
        //centeralize widgets in the column
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //use "Row" to put widgets horizontally
          Row(
            //let widgets take equal space in the row
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //add two images from assets not from the internet
              Image.asset(
                "assets/jerry.png",
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              Image.asset(
                "assets/tom.jpg",
                width: MediaQuery.of(context).size.width * 0.3,
              ),
            ],
          ),
          //create space between the row and the text
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          //use "Text" widget to add certain sentence and styling it
          const Text(
            "Tom & Jerry",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
          )
        ],
      ),
    );
  }
}
