// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'package:sniffme/pages/search_page.dart';
import 'pages/add_page.dart';
import 'package:sniffme/pages/cart_page.dart';
import 'package:sniffme/pages/account_page.dart';
import 'package:sniffme/pages/edit_profile.dart';

import 'home_page.dart';
import 'search_page.dart';
import 'add_page.dart';
import 'cart_page.dart';
import 'account_page.dart';
import 'edit_profile.dart';

class Main2 extends StatefulWidget {
  const Main2({Key key}) : super(key: key);

  @override
  _Main2State createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  // ignore: non_constant_identifier_names
  int current_index = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    AddPage(),
    CartPage(),
    EditProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: current_index,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: current_index,
        onTap: (index) => setState(() => current_index = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
