// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playground_flutter/aufgaben/task452_grocery_shopping/models/bottom_bar.dart';
import 'package:playground_flutter/aufgaben/task452_grocery_shopping/models/product_tile2.dart';
import 'package:playground_flutter/aufgaben/task452_grocery_shopping/models/product_tile2_avocado.dart';
import 'package:playground_flutter/aufgaben/task452_grocery_shopping/models/title_picture_stack.dart';
import 'package:playground_flutter/aufgaben/task452_grocery_shopping/models/searching_textfield.dart';

void main() {
  runApp(const MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//NOTE - Liste von Containern zum Experimentieren
final List<Widget> exampleList = [
  Container(
    height: 33,
    width: 33,
    color: Colors.black,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black12,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black26,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black38,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black45,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black45,
  ),
  Container(
    height: 33,
    width: 33,
    color: Colors.black54,
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

//NOTE - woher?
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
        ),
        child: SafeArea(
          //SECTION - OBERSTES List-Widget
          child: ListView(
            children: [
              //SECTION - Searchbar
              const SearchingTextfield(),

              //SECTION - Titelbild
              const TitlePictureStack(),
              const SizedBox(
                height: 10.0,
              ),

              //SECTION - Serarating Bar 'Cagegories'
              Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.all(3.0),
                child: const Text(
                  'Categories X',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              //SECTION - List Slider horizontal (mit Max angefangen)
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  children: [
                    //SECTION  Vegetable Button
                    Stack(
                      children: [
                        SizedBox(
                          width: 54,
                          height: 77,
                        ),
                        Positioned(
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Color.fromARGB(255, 202, 241, 206),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 12,
                          child: Image.asset(
                            'lib/aufgaben/task452_grocery_shopping/assets/Group.png',
                            width: 30,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              width: 54,
                              child: Text(
                                textAlign: TextAlign.center,
                                'Vegetables',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),

                    //SECTION  Fruits Button
                    Stack(
                      children: [
                        SizedBox(
                          width: 54,
                          height: 77,
                        ),
                        Positioned(
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Color.fromARGB(255, 254, 220, 207),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 12,
                          child: Image.asset(
                            'lib/aufgaben/task452_grocery_shopping/assets/apple.png',
                            width: 30,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              width: 54,
                              child: Text(
                                textAlign: TextAlign.center,
                                'Fruits',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),

                    //SECTION  Beverages Button
                    Stack(
                      children: [
                        SizedBox(
                          width: 54,
                          height: 77,
                        ),
                        Positioned(
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Color.fromARGB(255, 255, 239, 199),
                          ),
                        ),
                        Positioned(
                          top: 11,
                          left: 12,
                          child: Image.asset(
                            'lib/aufgaben/task452_grocery_shopping/assets/Group_216.png',
                            width: 30,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              width: 54,
                              child: Text(
                                textAlign: TextAlign.center,
                                'Beverages',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),

                    //SECTION  Grocery Button
                    Stack(
                      children: [
                        SizedBox(
                          width: 54,
                          height: 77,
                        ),
                        Positioned(
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Color.fromARGB(255, 245, 224, 253),
                          ),
                        ),
                        Positioned(
                          top: 18,
                          left: 12,
                          child: Image.asset(
                            'lib/aufgaben/task452_grocery_shopping/assets/Vector-1.png',
                            width: 30,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              width: 54,
                              child: Text(
                                textAlign: TextAlign.center,
                                'Grocery',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),

                    //SECTION  Edible oil Button
                    Stack(
                      children: [
                        SizedBox(
                          width: 54,
                          height: 77,
                        ),
                        Positioned(
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Color.fromARGB(255, 200, 252, 234),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 9,
                          child: Image.asset(
                            'lib/aufgaben/task452_grocery_shopping/assets/Group-1.png',
                            width: 30,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              width: 54,
                              child: Text(
                                textAlign: TextAlign.center,
                                'Edible oil',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),

                    //SECTION  Household Button
                    Stack(
                      children: [
                        SizedBox(
                          width: 54,
                          height: 77,
                        ),
                        Positioned(
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Color.fromARGB(255, 202, 241, 206),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 6,
                          child: Image.asset(
                            'lib/aufgaben/task452_grocery_shopping/assets/vacuum.png',
                            width: 37,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: SizedBox(
                              width: 54,
                              child: Text(
                                textAlign: TextAlign.center,
                                'Household',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),

                    /// TODO - "...List.generate() ist von Max. Cheggiddah
                    /// The below code in Dart is using the `List.generate` function to create a list with a specified
                    /// number of elements. The `List.generate` function takes two arguments: the number of elements to
                    /// generate and a function that defines how each element is generated.
/*                     ...List.generate(
                      3,
                      (index) => Container(
                        width: 54,
                        height: 54,
                        color: Colors.amber,
                        child: Text('${index + 1}'),
                      ),
                    ) */
                  ],
                ),
              ),

              //SECTION - Serarating Bar 'Featured Products'
              Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.all(3.0),
                child: const Text(
                  'Featured Products',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              // SECTION Product-Tiles
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // zwei Kacheln nebeneinander
                  ProductTileAvocado(),
                  ProductTile2(),
                ],
              ),
              Row(
                children: const [
                  // zwei Kacheln nebeneinander
                  ProductTile2(),
                  ProductTileAvocado(),
                ],
              ),
              Row(
                children: const [
                  // zwei Kacheln nebeneinander
                  ProductTileAvocado(),
                  ProductTile2(),
                ],
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
      //! =============================================== bottom
      bottomNavigationBar: SafeArea(
        //NOTE - um die BottomNavBar auslagern zu können,
        //mussten ihr die Parameter aus der obigen Funktion '_onItemTapped' mitgegeben werden
        child: bottomBar(_selectedIndex, _onItemTapped),
      ),
    );
  }
}
