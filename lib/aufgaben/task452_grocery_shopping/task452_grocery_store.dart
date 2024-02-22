// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
                color: const Color.fromARGB(255, 49, 161, 241),
                child: const Text(
                  'Categories X',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              //SECTION - List Slider horizontal (mit Max angefangen)
              SizedBox(
                height: 77,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    /// The above code in Dart is using the `List.generate` function to create a list with a specified
                    /// number of elements. The `List.generate` function takes two arguments: the number of elements to
                    /// generate and a function that defines how each element is generated.
                    ...List.generate(
                      3,
                      (index) => Container(
                        width: 60,
                        height: 78,
                        color: Colors.amber,
                        child: Text('${index + 1}'),
                      ),
                    )
                  ],
                ),
              ),
              //SECTION - Serarating Bar 'Featured Products'
              Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.all(3.0),
                color: const Color.fromARGB(255, 49, 161, 241),
                child: const Text(
                  'Featured Products',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              // Product-Tiles
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

//STUB -
  //NOTE - Widget lässt sich nicht auslagern
  BottomNavigationBar bottomBar(int selectedIndex, void Function(int) onItemTapped) {
    return BottomNavigationBar(
      backgroundColor: Colors.amber,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.grey.shade700,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.heart_broken_outlined),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: onItemTapped,
    );
  }
}
