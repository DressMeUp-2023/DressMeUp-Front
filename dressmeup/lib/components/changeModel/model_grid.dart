import 'package:dressmeup/assets/constants.dart';
import 'package:dressmeup/classes/fitting_class.dart';
import 'package:dressmeup/components/button.dart';
import 'package:dressmeup/components/select_image copy.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ModelGrid extends StatefulWidget {
  final int length;
  final List<FittingModel> image;
  const ModelGrid({super.key, required this.length, required this.image});

  @override
  State<ModelGrid> createState() => _ModelGridState();
}

class _ModelGridState extends State<ModelGrid> {
  @override
  Widget build(BuildContext context) {
    int selectedImageIndex = 0;
    bool isSelected = false;

    @override
    void initState() {
      selectedImageIndex = widget.length + 1;
      super.initState();
    }

    return Column(children: [
      Flexible(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            widget.length,
            (index) {
              return isSelected
                  ? SelectImage(
                      index: index,
                      image: widget.image[index].image,
                      isSelected: selectedImageIndex == index,
                      onTap: (selectedImageIndex) {
                        setState(() {
                          selectedImageIndex = index;
                          isSelected = false;
                        });
                      },
                    )
                  : SelectImage(
                      index: index,
                      image: widget.image[index].image,
                      isSelected: false,
                      onTap: (selectedImageIndex) {
                        setState(() {
                          selectedImageIndex = index;
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
                      style: TextStyle(fontSize: 20, color: Color(fontColor)),
                    ))),
              ),
            )
          : Container()
    ]);
  }
}
