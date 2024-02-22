// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

class ProductTile2 extends StatelessWidget {
  const ProductTile2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // ============================================================ Kachel 1
          width: 174,
          height: 234,
          color: Colors.white,
        ),
        Positioned(
          // ============================================================ Kreis im Hintergrund
          top: 20.0,
          left: 43.0,
          child: CircleAvatar(
            radius: 37,
            backgroundColor: Color.fromRGBO(255, 206, 192, 1),
          ),
        ),
        Positioned(
          // ============================================================ Produkt
          top: 44.0,
          left: 40.0,
          child: Image.asset(
            'lib/aufgaben/task452_grocery_shopping/assets/peach-24.png',
            width: 77,
          ),
        ),
        Positioned(
          // ============================================================ Produktinfos
          bottom: 40.0,
          left: 0.0,
          right: 0.0, // Fügt die gesamte Breite des obersten Containers hinzu
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                style: TextStyle(
                  // ============================================================ txt Preis
                  color: Color.fromRGBO(108, 197, 29, 1),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
                '\$8.00',
                textAlign: TextAlign.center,
              ),
              Text(
                style: TextStyle(
                  // ============================================================ txt Produkt
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
                'Fresh Peach',
                textAlign: TextAlign.center,
              ),
              Text(
                style: TextStyle(
                  // ============================================================txt Menge
                  color: Color.fromRGBO(134, 136, 137, 1),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
                'dozen',
                textAlign: TextAlign.center,
              ),
              Divider(
                // ============================================================Divider
                endIndent: 0,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 7.0,
          left: 0.0,
          right: 0.0,
          child: SizedBox(
            width: 5.0,
            height: 45.0,
            child: ListTile(
              // ============================================================ Action Add to Cart
              leading: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.lightGreen,
              ),
              title: Text(
                'Add to cart',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
        Positioned(
          top: 7.0,
          right: 7.0,
          child: Icon(
            // Herz
            Icons.favorite_border,
            color: Colors.grey,
          ),
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          child: Container(
            color: Color.fromARGB(255, 255, 226, 182),
            padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 1.0, bottom: 1.0),
            child: Text(
              'NEW',
              style: TextStyle(fontSize: 12, color: Color.fromRGBO(219, 168, 39, 1)),
            ),
          ),
        ),
      ],
    );
  }
}
