import 'package:dressmeup/components/changeModel/change_model.dart';
import 'package:dressmeup/components/dressUp/dress_up.dart';
import "package:dressmeup/components/album.dart";
import "package:flutter/material.dart";

class InitHome extends StatefulWidget {
  const InitHome({Key? key}) : super(key: key);

  @override
  State<InitHome> createState() => _BottomBarState();
}

class _BottomBarState extends State<InitHome> {
  int currentIndex = 1;
  static List<Widget> pages = const <Widget>[ChangeModel(), DressUp(), Album()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          currentIndex: currentIndex,
          selectedItemColor: const Color.fromRGBO(246, 154, 154, 1.0),
          unselectedItemColor: Colors.grey.shade700,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.accessibility), label: "Change model"),
            BottomNavigationBarItem(
                icon: Icon(Icons.checkroom), label: "Dress UP"),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: "Album"),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child: pages[currentIndex]),
      ),
    );
  }
}
