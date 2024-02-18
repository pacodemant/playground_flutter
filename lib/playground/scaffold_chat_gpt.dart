import 'package:flutter/material.dart';

//! ursprünglicher Dateiname, wenn Datei nicht genutzt 'scaffold_chat_gpt.dart'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Column and Row Example'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('AB'),
                ],
              ),
              Row(
                children: [
                  Text('CD'),
                ],
              ),
              Row(
                children: [
                  Text('E'),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_left),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.square),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
