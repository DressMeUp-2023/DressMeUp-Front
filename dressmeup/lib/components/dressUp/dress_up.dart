import 'package:dressmeup/components/SIgnin/Sign_up.dart';
import 'package:dressmeup/components/dressUp/closet_sheet.dart';
import 'package:dressmeup/components/SIgnin/init_setting.dart';
import 'package:dressmeup/components/SIgnin/login.dart';
import 'package:flutter/material.dart';

class DressUp extends StatelessWidget {
  const DressUp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
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
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 380, left: 320),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const ClosetSheet(),
        ],
      ),
    );
  }
}
