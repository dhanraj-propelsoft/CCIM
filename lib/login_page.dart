import 'package:flutter/material.dart';
import 'package:flutter_app_login_screen/search.dart';
import 'package:flutter_app_login_screen/style.dart';

import 'cart.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _selecteditem = 0;

  var _pages = [
    HomePage(),
    SearchPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: mainContainer,
      //   title: Text("Login Page"),
      // ),
      body: Center(
        child: _pages[_selecteditem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mainContainer,
        selectedItemColor: gradientColor2,
        unselectedItemColor: textColor2,
        currentIndex: _selecteditem,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.yellow,
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            title: Text("Cart"),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   title: Text("Home"),
          // ),
        ],

        // initialActiveIndex = 0;
        onTap: (index) {
          setState(() {
            _selecteditem = index;
          });
        },
      ),
    );
  }
}
