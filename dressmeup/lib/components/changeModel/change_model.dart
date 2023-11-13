import 'package:dressmeup/assets/constants.dart';
import 'package:dressmeup/components/button.dart';
import 'package:dressmeup/components/select_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChangeModel extends StatefulWidget {
  const ChangeModel({super.key});

  @override
  State<ChangeModel> createState() => _ChangeModelState();
}

class _ChangeModelState extends State<ChangeModel> {
  int _selectedImageIndex = 7;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(flex: 1),
            Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Button(
                          buttonName: 'Camera',
                          icon: Icons.camera_alt,
                          imgSource: ImageSource.camera)),
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Button(
                          buttonName: 'Gallery',
                          icon: Icons.photo,
                          imgSource: ImageSource.gallery)),
                ],
              ),
            ),
            const Flexible(
                flex: 3,
                child: Center(
                  child: Text(
                    'Select \nFitting Model',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                )),
            Flexible(
              flex: 6,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  5,
                  (index) {
                    return isSelected
                        ? SelectImage(
                            index: index,
                            isSelected: _selectedImageIndex == index,
                            onTap: (selectedImageIndex) {
                              setState(() {
                                _selectedImageIndex = index;
                                isSelected = false;
                              });
                            },
                          )
                        : SelectImage(
                            index: index,
                            isSelected: false,
                            onTap: (selectedImageIndex) {
                              setState(() {
                                _selectedImageIndex = index;
                                isSelected = true;
                              });
                            },
                          );
                  },
                ),
              ),
            ),
            isSelected
                ? Container(
                    height: 50,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(completeButtonColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),
                          onPressed: () {},
                          child: const Center(
                              child: Text(
                            "Selection completed",
                            style: TextStyle(
                                fontSize: 20, color: Color(fontColor)),
                          ))),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
