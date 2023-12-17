import 'package:dressmeup/assets/constants.dart';
import 'package:dressmeup/components/button.dart';
import 'package:dressmeup/components/changeModel/model_grid.dart';
import 'package:dressmeup/services/fitting_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChangeModel extends StatefulWidget {
  const ChangeModel({super.key});

  @override
  State<ChangeModel> createState() => _ChangeModelState();
}

class _ChangeModelState extends State<ChangeModel> {
  @override
  Widget build(BuildContext context) {
    FittingService fittingService = FittingService();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(flex: 1),
            const Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Button(
                          buttonName: 'Camera',
                          icon: Icons.camera_alt,
                          imgSource: ImageSource.camera)),
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Button(
                          buttonName: 'Gallery',
                          icon: Icons.photo,
                          imgSource: ImageSource.gallery)),
                ],
              ),
            ),
            const Flexible(
              flex: 3,
              child: Center(
                child: Text(
                  'Select \nFitting Model',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: FutureBuilder(
                  future: fittingService.loadFittingData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ModelGrid(
                          length: snapshot.data!.length, image: snapshot.data!);
                    } else {
                      return Container();
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
