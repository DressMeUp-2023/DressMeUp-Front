import 'package:dressmeup/assets/constants.dart';
import 'package:dressmeup/components/changeModel/change_model.dart';
import 'package:dressmeup/components/dressUp/dress_up.dart';
import 'package:dressmeup/components/Album/album.dart';
import "package:flutter/material.dart";

class InitHome extends StatefulWidget {
  const InitHome({Key? key}) : super(key: key);

  @override
  State<InitHome> createState() => _BottomBarState();
}

class _BottomBarState extends State<InitHome> {
  int currentIndex = 1;
  static List<Widget> pages = <Widget>[
    const ChangeModel(),
    const DressUp(),
    const Album()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(widgetBackgroundColor),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor: const Color(dartSkyBlueColor),
          unselectedItemColor: const Color(fontColor),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.accessibility, size: 35),
                label: "Change model"),
            BottomNavigationBarItem(
                icon: Icon(Icons.checkroom, size: 35), label: "Dress UP"),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo, size: 35), label: "Album"),
          ]),
      body: Center(child: pages[currentIndex]),
    );
  }
}
