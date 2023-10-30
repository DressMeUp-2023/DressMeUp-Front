import "package:dressmeup/components/change_model.dart";
import "package:dressmeup/components/dress_up.dart";
import "package:dressmeup/components/home_page.dart";
import "package:dressmeup/components/album.dart";
import "package:flutter/material.dart";

class InitHome extends StatefulWidget {
  const InitHome({Key? key}) : super(key: key);

  @override
  State<InitHome> createState() => _BottomBarState();
}

class _BottomBarState extends State<InitHome> {
  int currentIndex = 0;
  static List<Widget> pages = const <Widget>[
    HomePage(),
    ChangeModel(),
    DressUp(),
    Album()
  ];

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
          selectedItemColor: Color.fromRGBO(246, 154, 154, 1.0),
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.accessibility), label: "Change model"),
            BottomNavigationBarItem(
                icon: Icon(Icons.checkroom), label: "Dress UP"),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: "Album"),
          ]),
      body: Center(child: pages[currentIndex]),
    );
  }
}
