import 'package:dressmeup/components/Album/album_grid.dart';
import 'package:dressmeup/services/album_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dressmeup/assets/constants.dart';

class Album extends StatefulWidget {
  const Album({Key? key}) : super(key: key);

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  late SharedPreferences prefs;
  bool isLiked = false;
  AlbumService albumService = AlbumService();

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 1),
          SizedBox(
            height: 700,
            child: FutureBuilder(
                future: albumService.loadAlbumData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return AlbumGrid(
                      length: snapshot.data!.length,
                      album: snapshot.data!,
                    );
                  } else {
                    return Container();
                  }
                }),
          ),
        ],
      ),
    );
  }
}
