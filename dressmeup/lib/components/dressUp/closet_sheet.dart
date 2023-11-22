import 'package:dressmeup/assets/constants.dart';
import 'package:dressmeup/components/dressUp/closet.dart';
import 'package:flutter/material.dart';

class ClosetSheet extends StatelessWidget {
  const ClosetSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<Text> topList = [
      Text("image0"),
      Text("image0"),
      Text("image0"),
      Text("image0"),
      Text("image4")
    ];
    const List<Text> bottomList = [
      Text("image0"),
      Text("image0"),
      Text("image0"),
      Text("image0"),
      Text("image4"),
      Text("image0"),
      Text("image0"),
      Text("image0"),
      Text("image0"),
      Text("image9")
    ];
    const List<Text> dressList = [
      Text("image0"),
      Text("image1"),
    ];

    return DraggableScrollableSheet(
      initialChildSize: 0.18,
      minChildSize: 0.1,
      maxChildSize: 0.6,
      builder: (BuildContext context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            color: const Color(widgetBackgroundColor),
            child: Column(
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
                DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      const TabBar(
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
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: TabBarView(children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(widgetBackgroundColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Closet(
                              length: topList.length,
                              scrollController: scrollController,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(widgetBackgroundColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Closet(
                              length: bottomList.length,
                              scrollController: scrollController,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(widgetBackgroundColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Closet(
                              length: dressList.length,
                              scrollController: scrollController,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
