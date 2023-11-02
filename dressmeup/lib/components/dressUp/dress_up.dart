import 'package:dressmeup/components/dressUp/closet.dart';
import 'package:dressmeup/components/init_page.dart';
import 'package:flutter/material.dart';

class DressUp extends StatelessWidget {
  const DressUp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color(0xffA9DDF7),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Flexible(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(35)),
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
            ),
            const Flexible(
              flex: 1,
              child: Closet(),
            )
          ],
        ),
      ),
    );
  }
}
