import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class Button extends StatelessWidget {
  final String buttonName;
  final IconData icon;
  final ImageSource imgSource;

  const Button(
      {super.key,
      required this.buttonName,
      required this.icon,
      required this.imgSource});

  Future getImage(ImageSource imageSource) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: imageSource);

    if (pickedFile != null) {
      // setState(() {
      //   _image = XFile(pickedFile.path)
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.grey)),
      onPressed: () {
        getImage(imgSource);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonName,
            style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
          ),
          const SizedBox(height: 10),
          Icon(icon, size: 40, color: Colors.grey.shade700)
        ],
      ),
    );
  }
}
