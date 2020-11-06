import 'package:flutter/material.dart';

void main() {
  runApp(BooksScreen());
}

class BooksScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Halaman Books')
      )
    );
  }
}
