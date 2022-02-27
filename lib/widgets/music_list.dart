import 'package:flutter/material.dart';
import 'package:yili_music_app/model/music.dart';
import 'package:yili_music_app/widgets/music_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({Key? key, this.musicList = const <Music>[]})
      : super(key: key);

  final List<Music> musicList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: Column(
        children: musicList
            .map((item) => MusicCard(
                cover: "assets/images/musician-photo.png",
                name: item.name,
                album: "十一月的肖邦",
                artist: "周杰伦"))
            .toList(),
      ),
    );
  }
}
