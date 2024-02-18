import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        // Container für die Hintergrundfarbe
        color: Colors.blue, // Hintergrundfarbe festlegen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Column Widget
          children: [
            Column(
              // Row Widget
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.amberAccent,
                  child: const Text('AB',
                      style: TextStyle(color: Colors.black54, fontSize: Checkbox.width)),
                ),
                Container(
                  color: Colors.red,
                  child: const Text('CD',
                      style: TextStyle(color: Colors.black54, fontSize: Checkbox.width)),
                ),
                Container(
                  color: Colors.green,
                  child: const Text('E',
                      style: TextStyle(color: Colors.black54, fontSize: Checkbox.width)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
