import 'dart:convert';

class TopModel {
  final String id;
  final String image;

  TopModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'];
}

class TopList {
  final List<TopModel>? tops;
  TopList({this.tops});

  factory TopList.fromJson(String jsonString) {
    List<dynamic> listFromJson = json.decode(jsonString);
    List<TopModel> tops = <TopModel>[];

    tops = listFromJson.map((top) => TopModel.fromJson(top)).toList();
    return TopList(tops: tops);
  }
}

class BottomModel {
  final String id;
  final String image;

  BottomModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'];
}

class BottomList {
  final List<BottomModel>? bottoms;
  BottomList({this.bottoms});

  factory BottomList.fromJson(String jsonString) {
    List<dynamic> listFromJson = json.decode(jsonString);
    List<BottomModel> bottoms = <BottomModel>[];

    bottoms =
        listFromJson.map((bottom) => BottomModel.fromJson(bottom)).toList();
    return BottomList(bottoms: bottoms);
  }
}

class DressModel {
  final String id;
  final String image;

  DressModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'];
}

class DressList {
  final List<DressModel>? dresses;
  DressList({this.dresses});

  factory DressList.fromJson(String jsonString) {
    List<dynamic> listFromJson = json.decode(jsonString);
    List<DressModel> dresses = <DressModel>[];

    dresses = listFromJson.map((dress) => DressModel.fromJson(dress)).toList();
    return DressList(dresses: dresses);
  }
}
