import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff388E3C),
      body: Center(
        child: Text(
          'Welcome My Dear',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    );
  }
}
