import 'package:flutter/material.dart';
import 'package:demoapp/pages/home_page.dart';
import 'package:demoapp/pages/profile_page.dart';

class SamPage extends StatefulWidget {
  const SamPage({super.key});

  @override
  State<SamPage> createState() => _SamPageState();
}

class _SamPageState extends State<SamPage> {
  // this keeps track of the selected index
  int _selectedIndex = 0;

    // this method updates the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // this pages we have in our app
  final List _pages = [
    // homepage
    HomePage(),

    // profilepage
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ]
      ),
    );
  }
}