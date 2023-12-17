import 'package:dressmeup/assets/constants.dart';
import 'package:flutter/material.dart';

class SelectImage extends StatelessWidget {
  final int index;
  final String image;
  final bool isSelected;
  final void Function(int index) onTap;
  const SelectImage(
      {super.key,
      required this.index,
      required this.image,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => onTap(index),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color:
                    isSelected ? const Color(0xffF48E8E) : Colors.grey.shade700,
                width: isSelected ? 3.0 : 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Stack(
            children: [
              Center(
                  child: Image.network(
                image,
                fit: BoxFit.cover,
              )),
              isSelected
                  ? const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: Color(completeButtonColor),
                        child: Icon(Icons.check, color: Colors.white),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
