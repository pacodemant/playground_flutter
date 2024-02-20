// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Template'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '\u200B', // Unsichtbares Zeichen
            // Füge die passende Farbe hinzu, damit das Label unsichtbar wird
            // Die Farbe sollte mit dem Hintergrund des BottomNavigationBar übereinstimmen
            // Zum Beispiel: transparent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '\u200B', // Unsichtbares Zeichen
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'asdf', // Unsichtbares Zeichen
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
