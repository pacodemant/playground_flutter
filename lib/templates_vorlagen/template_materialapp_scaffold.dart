//? Mit diesem Template kannst du problemlos neue Seiten erstellen, 
//? indem du einfach neue Klassen erstellst, 
//? die StatelessWidget oder StatefulWidget erweitern, 
//? und sie dann als neue home-Route in MaterialApp einfügst.

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text(
          'Welcome to your Flutter app!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
