import 'dart:convert';
import 'package:dressmeup/classes/clothes_class.dart';
import 'package:dressmeup/classes/fitting_class.dart';
import 'package:flutter/services.dart';

class ClothService {
  Future<List<TopModel>?> loadTopData() async {
    List<TopModel>? tops = [];
    String data = await rootBundle.loadString('lib/assets/dummytop.json');
    final List<dynamic> jsonData = jsonDecode(data);

    tops = TopList.fromJson(data).tops;
    return tops;
  }

  Future<List<BottomModel>?> loadBottomData() async {
    List<BottomModel>? bottoms = [];
    String data = await rootBundle.loadString('lib/assets/dummybottom.json');
    final List<dynamic> jsonData = jsonDecode(data);

    bottoms = BottomList.fromJson(data).bottoms;
    return bottoms;
  }

  Future<List<DressModel>?> loadDressData() async {
    List<DressModel>? dresses = [];
    String data = await rootBundle.loadString('lib/assets/dummydress.json');
    final List<dynamic> jsonData = jsonDecode(data);

    dresses = DressList.fromJson(data).dresses;
    return dresses;
  }
}
