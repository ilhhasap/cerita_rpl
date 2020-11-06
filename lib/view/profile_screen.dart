import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Halaman Profile')
      )
    );
  }
}
