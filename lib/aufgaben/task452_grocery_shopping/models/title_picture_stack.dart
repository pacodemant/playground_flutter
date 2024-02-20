// ignore_for_file: use_super_parameters, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitlePictureStack extends StatelessWidget {
  const TitlePictureStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset('lib/aufgaben/task452_grocery_shopping/assets/background.png'),
        Positioned(
          bottom: 30.0,
          left: 30.0,
          child: Row(
            // die Objekte links unten im Image
            children: [
              Container(
                // blauer Strich und …
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.8),
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                height: 8,
                width: 40,
              ),
              SizedBox(
                width: 4.0,
              ),
              Container(
                // ...  weiße kleine Kreise
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                height: 8,
                width: 8,
              ),
              SizedBox(
                width: 4.0,
              ),
              Container(
                // ...  weiße kleine Kreise
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                height: 8,
                width: 8,
              ),
              SizedBox(
                width: 4.0,
              ),
              Container(
                // ...  weiße kleine Kreise
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4.0))),
                height: 8,
                width: 8,
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 70.0,
            left: 50.0,
            child: Text(
              '20% off on asdf\nfirst purchase',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
