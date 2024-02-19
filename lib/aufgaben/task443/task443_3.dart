// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //! ------------------------------------ Row ganz oben, quasi im "SafeSpace"
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
            padding:

                /// Die Zeile `const EdgeInsets.all(8),` definiert die Polsterung für das Container-Widget. In diesem Fall
                /// wird ein gleichmäßiger Abstand von 8 logischen Pixeln an allen Seiten (oben, rechts, unten, links) des
                /// Containers. Das bedeutet, dass zwischen dem Inhalt des Containers und seinen Rändern ein Abstand von 8 Pixeln
                /// Kanten.
                const EdgeInsets.all(8),
            height: 50,
            child: const Text(
              'SizedBox Exercise',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //! ------------------------------------ mittlerer Container, Hauptinhalt (der body, wenn es ein Scaffold wäre)
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.deepOrange,
              height: 340,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        //! Box 1
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              width: 3.0,
                              color: Colors.white,
                            )),
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        //! Box 2
                        alignment: Alignment.center,
                        width: 120,
                        height: 80,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        //! Box 3
                        alignment: Alignment.center,
                        width: 80,
                        height: 120,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),


          //! ------------------------------------ Fußleiste
          Container(
            alignment: Alignment.center,
            color: Colors.amber,
            height: 60,
            //!
            //! Auch hier die Frage, warum ich hier ein Directionality-Widget verwenden MUSS, um im Smartphone-Display keinen Fehler bekomme??
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
                Icon(
                  Icons.square,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
