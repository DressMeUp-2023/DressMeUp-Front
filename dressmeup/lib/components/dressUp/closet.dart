import 'package:dressmeup/components/button.dart';
import 'package:dressmeup/components/select_image.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Closet extends StatefulWidget {
  final ScrollController? scrollController;
  const Closet({super.key, required this.scrollController});

  @override
  State<Closet> createState() => _Closet();

  Future getImage(ImageSource imageSource) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: imageSource);

    if (pickedFile != null) {
      // setState(() {
      //   _image = XFile(pickedFile.path)
      // }
    }
  }
}

class _Closet extends State<Closet> {
  int _selectedImageIndex = 7;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      controller: widget.scrollController,
      crossAxisCount: 4,
      children: List.generate(
        5,
        (index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Button(
                  buttonName: "closet",
                  icon: Icons.add,
                  imgSource: ImageSource.camera),
            );
          } else {
            return SelectImage(
              index: index,
              isSelected: _selectedImageIndex == index,
              onTap: (selectedImageIndex) {
                setState(() {
                  _selectedImageIndex = index;
                });
              },
            );
          }
        },
      ),
    );
  }
}
