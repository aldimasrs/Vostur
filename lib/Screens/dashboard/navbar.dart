import 'package:flutter/material.dart';
import 'package:vostur/Screens/dashboard/library.dart';
import 'package:vostur/Screens/dashboard/profile.dart';
import '../../constants.dart';
import 'home.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({Key key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedItemIndex = 0;
  final List pages = [
    HomePage(),
    Library(),
    HomeProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        unselectedItemColor: kTextColor,
        selectedItemColor: kActiveIconColor,
        currentIndex: _selectedItemIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _selectedItemIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: ("Home"),
              icon: Icon(
                Icons.home_rounded,
                size: 40,
              )),
          BottomNavigationBarItem(
              label: ("Library"),
              icon: Icon(
                Icons.library_books_rounded,
                size: 40,
              )),
          BottomNavigationBarItem(
              label: ("MyAccount"),
              icon: Icon(
                Icons.person,
                size: 40,
              )),
        ],
      ),
      body: pages[_selectedItemIndex],
    );
  }
}
