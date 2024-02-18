// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //! ------------------------------------ Row ganz oben
          Container(
            color: Colors.cyan,
            height: 57,
          ),
          //! ------------------------------------ Row mit Titelzeile
          Container(
            color: Colors.red,
            //!
            //! Warum nimmt der Container erst dann die gesamte Breite der Column darüber, wenn
            //! das folgende Attribut "alignment" gesetzt wurde?
            //! wird es auskommentiert, ist der Container nur exakt so breit, wie der Text
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(8), height: 50,
            child: const Directionality(
                textDirection:
                    TextDirection.ltr, // Hier können Sie die Leserichtung Ihrer App angeben
                child: Text(
                  'Column and Row Example',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          //! ------------------------------------ mitterer Container, hier ist Hauptinhalt
          Container(
            width: double.infinity,
            color: Colors.deepPurple,
            height: 685,
            child: const Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Directionality(
                    textDirection: TextDirection.ltr,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'AB',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('CD'),
                        Text('E'),
                      ],
                    ))
              ],
            ),
          ),
          //! ------------------------------------ Fußleiste
          Container(
            alignment: Alignment.center,
            color: Colors.amber,
            height: 60,
            //!
            //! Auch hier die Frage, warum ich hier ein Directionality-Widget verwenden MUSS?
            child: const Directionality(
                textDirection: TextDirection.ltr,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.square,
                      color: Colors.black,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
