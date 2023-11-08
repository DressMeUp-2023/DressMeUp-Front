import 'package:dressmeup/components/dressUp/closet_sheet.dart';
import 'package:dressmeup/components/init_setting.dart';
import 'package:flutter/material.dart';

class DressUp extends StatelessWidget {
  const DressUp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          image: const DecorationImage(
                            image: AssetImage('lib/assets/maleModel.png'),
                          )),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.refresh_outlined,
                                size: 50, color: Colors.grey.shade700),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const InitPage()));
                              },
                              child: Icon(
                                Icons.download,
                                size: 50,
                                color: Colors.grey.shade700,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const ClosetSheet(),
          ],
        ),
      ),
    );
  }
}
