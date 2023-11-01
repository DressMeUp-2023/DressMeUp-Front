import 'package:dressmeup/components/dressUp/closet.dart';
import 'package:flutter/material.dart';

class DressUp extends StatelessWidget {
  const DressUp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(35)),
              child: const Center(
                child: Text("DressUp"),
              ),
            ),
          ),
          const Flexible(
            flex: 1,
            child: Closet(),
          )
        ],
      ),
    );
  }
}
