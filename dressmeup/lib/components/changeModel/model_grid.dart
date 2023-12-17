import 'package:dressmeup/assets/constants.dart';
import 'package:dressmeup/classes/fitting_class.dart';
import 'package:dressmeup/components/select_image.dart';
import 'package:flutter/material.dart';

class ModelGrid extends StatefulWidget {
  final int length;
  final List<FittingModel> image;
  const ModelGrid({super.key, required this.length, required this.image});

  @override
  State<ModelGrid> createState() => _ModelGridState();
}

class _ModelGridState extends State<ModelGrid> {
  int _selectedImageIndex = 0;
  bool isSelected = false;

  @override
  void initState() {
    _selectedImageIndex = widget.length + 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                      image: widget.image[index].image,
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
                padding: const EdgeInsets.only(left: 45, right: 45, top: 10),
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
      //선택 완료시, post로 사용자가 변경한 이미지로 index 변경/기존 index 삭제
    ]);
  }
}
