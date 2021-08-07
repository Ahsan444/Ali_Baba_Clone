import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final titlesec;
  final reviewsec;
  final radiovalue;
  SecondScreen({this.titlesec, this.reviewsec, this.radiovalue});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  titlesec,
                  style: TextStyle(fontSize: 21, color: Colors.red),
                ),
                Text(
                  reviewsec,
                  style: TextStyle(fontSize: 21, color: Colors.red),
                ),
                Text(
                  radiovalue,
                  style: TextStyle(fontSize: 21, color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
