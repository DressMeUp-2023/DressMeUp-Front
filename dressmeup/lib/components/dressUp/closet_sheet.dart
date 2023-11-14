import 'package:dressmeup/assets/constants.dart';
import 'package:dressmeup/components/dressUp/closet.dart';
import 'package:flutter/material.dart';

class ClosetSheet extends StatelessWidget {
  const ClosetSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int selectedImageIndex = 7;
    return DraggableScrollableSheet(
      initialChildSize: 0.18,
      minChildSize: 0.1,
      maxChildSize: 0.5,
      builder: (BuildContext context, scrollController) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: const Color(widgetBackgroundColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Closet(
                    scrollController: scrollController,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                IgnorePointer(
                  child: Container(
                    color: const Color(widgetBackgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          height: 10,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: TabBar(
                      indicatorColor: Color(completeButtonColor),
                      tabs: [
                        Text(
                          'Top',
                          style: TextStyle(
                            color: Color(fontColor),
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Bottom',
                          style: TextStyle(
                            color: Color(fontColor),
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'dress',
                          style: TextStyle(
                            color: Color(fontColor),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )),
              ],
            )
          ],
        );
      },
    );
  }
}
