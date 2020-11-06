import 'package:flutter/material.dart';
import 'package:cerita_rpl/view/home_screen.dart';
import 'package:cerita_rpl/view/books_screen.dart';
import 'package:cerita_rpl/view/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Halamannav(),
    );
  }
}

class Halamannav extends StatefulWidget {
  @override
  _HalamannavState createState() => _HalamannavState();
}

class _HalamannavState extends State {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget> [
    HomeScreen(),
    BooksScreen(),
    ProfileScreen(),
  ];

void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Books'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile'
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          fixedColor: Colors.greenAccent[400],
          onTap: _onItemTapped,
        ),
    );
  }

}

