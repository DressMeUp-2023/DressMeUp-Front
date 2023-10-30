import 'package:flutter/material.dart';
import '../assets/constants.dart';
import 'bottom_bar.dart';

class Album extends StatelessWidget {
  const Album({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: Center(child: Text("Album")),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(35)),
        ),
      ),
    );
  }
}
