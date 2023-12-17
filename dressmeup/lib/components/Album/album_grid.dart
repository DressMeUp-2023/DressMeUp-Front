import 'package:dressmeup/classes/album_model.dart';
import 'package:dressmeup/services/album_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dressmeup/assets/constants.dart';

class AlbumGrid extends StatefulWidget {
  final int length;
  final List<AlbumModel> album;
  const AlbumGrid({super.key, required this.length, required this.album});

  @override
  State<AlbumGrid> createState() => _AlbumGridState();
}

class _AlbumGridState extends State<AlbumGrid> {
  late SharedPreferences prefs;
  bool isLiked = false;
  AlbumService albumService = AlbumService();

  // Future initPrefs() async {
  //   prefs = await SharedPreferences.getInstance();
  //   final likedPhotos = prefs.getStringList('likedPhotos');
  //   // 캐시 생성 -> 사용자가 앱을 닫을때, 서버 접속이 종료되었을 떄 한번에 post, 캐시 배우기
  //   //
  //   // await prefs.setStringList('likedPhotos', []);
  // }

  // @override
  // void initState() {
  //   initPrefs();
  //   super.initState();
  // }

  // onHeartTop() async {
  //   final likedPhotos = prefs.getStringList('likedPhotos');
  //   if (likedPhotos != null) {
  //     // if (isLiked) {
  //     //   likedPhotos.remove(widget.id);
  //     // } else {
  //     //   likedPhotos.add(widget.id);
  //     // }
  //     await prefs.setStringList('likedPhotos', likedPhotos);
  //     setState(() {
  //       isLiked = !isLiked;
  //     });
  //   }
  // }

  heartTap() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        widget.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade700),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child:
                      Center(child: Image.network(widget.album[index].image)),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: heartTap(),
                    icon: Icon(
                      isLiked
                          ? Icons.favorite
                          : Icons.favorite_outline_outlined,
                      color: const Color(completeButtonColor),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
