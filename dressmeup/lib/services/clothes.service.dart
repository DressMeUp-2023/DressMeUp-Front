import 'package:dressmeup/classes/clothes_class.dart';
import 'package:flutter/services.dart';

class ClothService {
  Future<List<TopModel>?> loadTopData() async {
    List<TopModel>? tops = [];
    String data = await rootBundle.loadString('lib/assets/dummytop.json');

    tops = TopList.fromJson(data).tops;
    return tops;
  }

  Future<List<BottomModel>?> loadBottomData() async {
    List<BottomModel>? bottoms = [];
    String data = await rootBundle.loadString('lib/assets/dummybottom.json');

    bottoms = BottomList.fromJson(data).bottoms;
    return bottoms;
  }

  Future<List<DressModel>?> loadDressData() async {
    List<DressModel>? dresses = [];
    String data = await rootBundle.loadString('lib/assets/dummydress.json');

    dresses = DressList.fromJson(data).dresses;
    return dresses;
  }
}
