import 'dart:convert';

class AlbumModel {
  final String image;

  AlbumModel.fromJson(Map<String, dynamic> json) : image = json['image'];
}

class AlbumList {
  final List<AlbumModel>? albums;
  AlbumList({this.albums});

  factory AlbumList.fromJson(String jsonString) {
    List<dynamic> listFromJson = json.decode(jsonString);
    List<AlbumModel> albums = <AlbumModel>[];

    albums = listFromJson.map((album) => AlbumModel.fromJson(album)).toList();
    return AlbumList(albums: albums);
  }
}
