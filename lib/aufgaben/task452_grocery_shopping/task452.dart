// ignore_for_file: use_super_parameters, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:playground_flutter/aufgaben/task452_grocery_shopping/models/title_picture_stack.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//
// ==================================================================
//

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//! Diese Zeile hat iwas mit meinen Versuchen zu tun, die iOS-Tastatur anzeigen zu lassen
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.only(
          left: 12.0,
          right: 12.0,
        ),
        child: SafeArea(
          child: Column(
            children: [
              TextField(
                //! warum funktioniert "keyboardType" nicht?
                keyboardType: TextInputType.number,
                //!controller: TextEditingController(),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade200,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: 'ff !="SearchBar" wg Rahmenfarbe u.a.',
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TitlePictureStack(), // ================================================= das Titel-Bild - EXTERN
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsetsDirectional.all(3.0),
                color: Color.fromARGB(255, 49, 161, 241),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

//todo ========================================================== Category Slider - TO DO
// in Tutorium-Video 20.Feb, 15.20 Uhr

//! ========================================================== Product-Tiles
              Row(
                // // ============================================================Pfirsiche
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        // ============================================================ Kachel 1
                        width: 174,
                        height: 234,
                        color: Colors.amber[100],
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
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Stack(
                    children: [
                      Container(
                        // ============================================================ Kachel 2
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
                          backgroundColor: Color.fromRGBO(
                              252, 255, 217, 1), //background: rgba(252, 255, 217, 1);
                        ),
                      ),
                      Positioned(
                        // ============================================================ Produkt
                        top: 44.0,
                        left: 40.0,
                        child: Image.asset(
                          'lib/aufgaben/task452_grocery_shopping/assets/aocado-2.png',
                          width: 82,
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
                              '\$7.00',
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              style: TextStyle(
                                // ============================================================ txt Produkt
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                              'Aloah',
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              style: TextStyle(
                                // ============================================================txt Menge
                                color: Color.fromRGBO(134, 136, 137, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                              '2.0 lbs',
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                                CrossAxisAlignment.center, // Zentriere die Inhalte horizontal
                            children: const [
                              Icon(
                                Icons.minimize,
                                color: Colors.lightGreen,
                              ),
                              SizedBox(width: 8), // Füge einen Abstand zwischen den Icons hinzu
                              Text(
                                '1',
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                  width:
                                      8), // Füge einen Abstand zwischen dem Text und dem Icon hinzu
                              Icon(
                                Icons.add,
                                color: Colors.lightGreen,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 7.0,
                        right: 7.0,
                        child: Icon(
                          // Herz
                          Icons.favorite,
                          color: Colors.red,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //! =============================================== bottom
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          backgroundColor: Colors.amber,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey.shade700,
                //! warum funktioniert "weight" für "The stroke weight for drawing the icon." nicht?
                weight: 9.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_outlined),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
