//? Mit diesem Template kannst du problemlos neue Seiten erstellen,
//? indem du einfach neue Klassen erstellst,
//? die StatelessWidget oder StatefulWidget erweitern,
//? und sie dann als neue home-Route in MaterialApp einfügst.

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyGroceryStore());
}

class MyGroceryStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
              child: Placeholder(
            color: Colors.amber,
            fallbackHeight: 100.0, //!fallbackHeigt ist die Höhe, die verwendet werden soll, wenn der Platzhalter sich in einer Situation mit einer unbegrenzten Höhe befindet
            fallbackWidth: 100.0,
          ))
        ],
      ),
    );
  }
}
