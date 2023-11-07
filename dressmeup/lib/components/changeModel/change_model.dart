import 'package:dressmeup/components/changeModel/button.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(flex: 1),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                child: Padding(
                  padding: EdgeInsets.only(top: 90, bottom: 130),
                  child: Text(
                    'Select \nFitting Model',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                )),
            Flexible(
              flex: 4,
              child: GridView.count(
                crossAxisCount: 2,
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
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
