// ignore_for_file: use_super_parameters, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:playground_flutter/task452_grocery_shopping/models/das_gruene_dingens_da.dart";

class TitlePictureStack extends StatelessWidget {
  const TitlePictureStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset('lib/aufgaben/task452_grocery_shopping/assets/title_pic.png'),
        Positioned(bottom: 30.0, left: 30.0, child: DasGrueneDingensDa()),
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
