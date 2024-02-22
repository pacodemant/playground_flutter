import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
            //todo
            //todo Warum nimmt der Container erst dann die gesamte Breite der Column darüber, wenn
            //todo  das folgende Attribut "alignment" gesetzt wurde?
            //todo wird es auskommentiert, ist der Container nur exakt so breit, wie der Text
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(8), height: 50,
            child: const Directionality(
                textDirection:
                    TextDirection.ltr, // Hier können Sie die Leserichtung Ihrer App angeben
                child: Text(
                  'SizedBox Exercise',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          //! ------------------------------------ mitterer Container, hier ist Hauptinhalt (der body, wenn es ein Scaffold wäre)
          Container(
            width: double.infinity,
            color: Colors.deepPurple,
            height: 685,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Directionality(
                    textDirection: TextDirection.ltr,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,borderRadius: BorderRadius.circular(50.0),
                              border: Border.all(
                                width: 3.0,
                                color: Colors.white,
                              )),
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          child: const Text('Box 1'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 80,
                          color: Colors.green,
                          child: const Text('Box 2'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 80,
                          height: 120,
                          color: Colors.red,
                          child: const Text('Box 3'),
                        ),
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
            //! Auch hier die Frage, warum ich hier ein Directionality-Widget verwenden MUSS, um im Smartphone-Display keinen Fehler bekomme??
            child: const Directionality(
                textDirection: TextDirection.ltr,
                child: Row(
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
                )),
          ),
        ],
      ),
    );
  }
}
