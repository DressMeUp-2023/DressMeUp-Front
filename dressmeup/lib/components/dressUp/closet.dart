import 'package:dressmeup/components/button.dart';
import 'package:dressmeup/components/select_image.dart';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Closet extends StatefulWidget {
  final int length;
  final ScrollController? scrollController;
  const Closet(
      {super.key, required this.length, required this.scrollController});

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
  int _selectedImageIndex = 0;
  bool isSelected = false;

  @override
  void initState() {
    _selectedImageIndex = widget.length + 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      controller: widget.scrollController,
      crossAxisCount: 4,
      children: List.generate(
        widget.length + 1,
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
            return isSelected
                ? SelectImage(
                    index: index,
                    isSelected: false,
                    onTap: (selectedImageIndex) {
                      setState(() {
                        _selectedImageIndex = index;
                        isSelected = false;
                      });
                    },
                  )
                : SelectImage(
                    index: index,
                    isSelected: _selectedImageIndex == index,
                    onTap: (selectedImageIndex) {
                      setState(() {
                        _selectedImageIndex = index;
                        isSelected = true;
                      });
                    },
                  );
          }
        },
      ),
    );
  }
}
