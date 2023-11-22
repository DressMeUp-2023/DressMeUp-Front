import 'package:dressmeup/assets/constants.dart';
import "package:flutter/material.dart";

class InitHome extends StatefulWidget {
  const InitHome({Key? key}) : super(key: key);

  @override
  State<InitHome> createState() => _BottomBarState();
}

class _BottomBarState extends State<InitHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(widgetBackgroundColor),
      body: Center(child: Container()),
    );
  }
}
