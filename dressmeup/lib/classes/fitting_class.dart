import 'dart:convert';

class FittingModel {
  final String id;
  final String image;

  FittingModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'];
}

class FittingList {
  final List<FittingModel>? fittings;
  FittingList({this.fittings});

  factory FittingList.fromJson(String jsonString) {
    List<dynamic> listFromJson = json.decode(jsonString);
    List<FittingModel> fittings = <FittingModel>[];

    fittings =
        listFromJson.map((fitting) => FittingModel.fromJson(fitting)).toList();
    return FittingList(fittings: fittings);
  }
}
