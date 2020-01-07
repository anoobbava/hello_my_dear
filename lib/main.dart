import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var timeNow = int.parse(DateFormat('kk').format(now));
    var message = '';
    var imageName = '';
    if (timeNow <= 12) {
      message = 'Good Morning My Dear';
      imageName = 'gm1.jpg';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      message = 'Good Afernoon My Dear';
      imageName = 'an.jpg';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      message = 'Good Evening My Dear';
      imageName = 'evening.jpg';
    } else {
      message = 'Good Night My Dear';
      imageName = 'night.jpg';
    }
    return Scaffold(
      backgroundColor: Color(0xff388E3C),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Text(
                message,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontFamily: 'Brush font'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  "assets/images/$imageName",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
