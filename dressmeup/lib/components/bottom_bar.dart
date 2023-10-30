import "package:flutter/material.dart";

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Color.fromRGBO(246, 154, 154, 1.0),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility), label: "Change model"),
          BottomNavigationBarItem(
              icon: Icon(Icons.checkroom), label: "Dress UP"),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: "Album"),
        ]);
  }
}
