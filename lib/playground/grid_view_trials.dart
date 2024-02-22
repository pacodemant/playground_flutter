// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

// Liste von Containern für die Test-GridView
final List<Widget> exampleList = [
  Container(
    height: 33,
    width: 33,
    color: Colors.black,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black12,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black26,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black38,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black45,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black45,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black54,
  ),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(12),
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.teal[100],
              child: const Text("He'd have you all unravel at zzzz"),
            ),
            Container(
              width: 20,
              height: 20,
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Heed not the rabble'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Sound of screams but the'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('Who scream'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[500],
              child: const Text('Revolution is coming...'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('Revolution, they...'),
            ),
          ],
        )

        /* GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: exampleList,
      ), */
        );
  }
}
