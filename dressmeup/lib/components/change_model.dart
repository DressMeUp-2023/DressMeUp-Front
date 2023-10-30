import 'package:flutter/material.dart';
import '../assets/constants.dart';
import 'bottom_bar.dart';
import 'package:image_picker/image_picker.dart';

class ChangeModel extends StatelessWidget {
  const ChangeModel({Key? key}) : super(key: key);

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
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 10,
                      child: ElevatedButton(
                        onPressed: () {
                          getImage(ImageSource.camera);
                        },
                        child: Column(
                          children: const [Text("Camera"), Icon(Icons.camera)],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 10,
                      child: ElevatedButton(
                        onPressed: () {
                          getImage(ImageSource.gallery);
                        },
                        child: Column(
                          children: const [Text("Gallery"), Icon(Icons.photo)],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(flex: 1, child: Container()),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(5, (index) {
                  return Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Text("image $index"),
                    ),
                  );
                }),
              ),
            )
          ],
        ),

        // Center(child: Text("Change Model")),
        // decoration: BoxDecoration(
        //     border: Border.all(color: Colors.black, width: 1.0),
        //     borderRadius: BorderRadius.circular(35)),
      ),
    );
  }
}
