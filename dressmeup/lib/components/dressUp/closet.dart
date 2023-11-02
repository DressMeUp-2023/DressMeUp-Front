import 'package:dressmeup/components/select_image.dart';
import 'package:flutter/material.dart';

class Closet extends StatefulWidget {
  const Closet({
    super.key,
  });

  @override
  State<Closet> createState() => _Closet();
}

class _Closet extends State<Closet> {
  int _selectedImageIndex = 7;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 1,
      children: List.generate(
        5,
        (index) {
          return SelectImage(
              index: index,
              isSelected: _selectedImageIndex == index,
              onTap: (selectedImageIndex) {
                setState(() {
                  _selectedImageIndex = index;
                });
              });
        },
      ),
    );
  }
}
