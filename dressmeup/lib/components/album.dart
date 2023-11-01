import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  const Album({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 1),
          Flexible(
            flex: 6,
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                100,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade700),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Center(child: Text("image $index")),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
