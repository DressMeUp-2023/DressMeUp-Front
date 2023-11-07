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
    return DraggableScrollableSheet(
      initialChildSize: 0.2,
      minChildSize: 0.1,
      maxChildSize: 0.5,
      builder: (BuildContext context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: GridView.count(
              controller: scrollController,
              crossAxisCount: 4,
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
            ),
          ),
        );
      },
    );
  }
}
