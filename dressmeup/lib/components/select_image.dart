import 'package:flutter/material.dart';

class SelectImage extends StatelessWidget {
  final int index;
  final bool isSelected;
  final void Function(int index) onTap;
  const SelectImage(
      {super.key,
      required this.index,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => onTap(index),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: isSelected
                      ? const Color(0xffF48E8E)
                      : Colors.grey.shade700),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Center(child: Text("image $index")),
        ),
      ),
    );
  }
}
