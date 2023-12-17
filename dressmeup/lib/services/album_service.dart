import 'package:dressmeup/classes/album_model.dart';
import 'package:flutter/services.dart';

class AlbumService {
  Future<List<AlbumModel>?> loadAlbumData() async {
    List<AlbumModel>? album = [];
    String data = await rootBundle.loadString('lib/assets/dummyalbum.json');

    album = AlbumList.fromJson(data).albums;
    return album;
  }
}
