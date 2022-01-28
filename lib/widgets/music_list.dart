import 'package:flutter/material.dart';
import 'package:yili_music_app/widgets/music_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: Column(
        children: const <Widget>[
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦"),
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦"),
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦"),
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦")
        ],
      ),
    );
  }
}
