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
              TitlePictureStack(), //!========================== das Titel-Bild
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

//todo ========================================================== Category Slider

//! ========================================================== Product-Tiles
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 175,
                    height: 234,
                    color: Colors.amber[100],
                    child: Stack(
                      children: Container()
                      /* CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 50.0,
                      ), */
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 175,
                    height: 234,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
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
