// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import

import 'package:flutter/material.dart';

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
