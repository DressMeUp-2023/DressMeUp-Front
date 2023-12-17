import 'package:dressmeup/classes/fitting_class.dart';
import 'package:flutter/services.dart';

class FittingService {
  Future<List<FittingModel>?> loadFittingData() async {
    List<FittingModel>? fittings = [];
    String data = await rootBundle.loadString('lib/assets/dummyfitting.json');

    fittings = FittingList.fromJson(data).fittings;
    return fittings;
  }
}
