import 'package:flutter/material.dart';
import '../assets/constants.dart';
import 'bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(35)),
        ),
      ),
    );
  }
}
