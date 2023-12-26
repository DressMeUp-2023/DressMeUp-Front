import 'dart:io';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:dressmeup/assets/constants.dart';
import 'package:image_picker/image_picker.dart';

class Button extends StatefulWidget {
  final String buttonName;
  final IconData icon;
  final ImageSource imgSource;

  const Button(
      {super.key,
      required this.buttonName,
      required this.icon,
      required this.imgSource});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Future getImage(ImageSource imageSource) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: imageSource);

    if (pickedFile != null) {
      setState(() {
        DefaultCacheManager().getSingleFile(pickedFile.path, key: 'file1');
      });
      print(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        getImage(widget.imgSource);
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(color: Color(boxBorderColor)),
        shape: widget.buttonName == "closet"
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(
                  width: 1.0,
                ),
              )
            : RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  width: 1.0,
                ),
              ),
      ),
      child: Center(
        child: widget.buttonName == "closet"
            ? const Icon(Icons.add, color: Color(boxBorderColor), size: 50)
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.buttonName,
                    style: const TextStyle(
                        fontSize: 18, color: Color(boxBorderColor)),
                  ),
                  const SizedBox(height: 10),
                  Icon(widget.icon,
                      size: 40, color: const Color(lightSkyBlueColor))
                ],
              ),
      ),
    );
  }
}
