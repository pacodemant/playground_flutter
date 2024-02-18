// YoutTube-Video: https://youtu.be/fSXEV7JUNMM?si=vFuSrOLCaB4sASHj
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playground_flutter/playground/yt_button_navi/quiz_page.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartPage());
  }
}

// ignore: use_key_in_widget_constructors
class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Startseite',
            style: TextStyle(color: Color.fromARGB(255, 139, 168, 33)),
          )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // folgende Zeile würde auch funktionieren:
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text('Willkommen inna Kwiss Äpp!'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage()));
              },
              child: Text('Kwizz schtahtn'))
        ],
      )),
    );
  }
}
