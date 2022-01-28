import 'package:flutter/material.dart';
import 'package:yili_music_app/pages/home/musician_card.dart';
import 'package:yili_music_app/widgets/header_section.dart';
import 'package:yili_music_app/widgets/scrollable_section.dart';

class MusicianBanner extends StatelessWidget {
  const MusicianBanner({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HeaderSection(title: title),
        ScrollableSection(
          children: <Widget>[
            MusicianCard(
                name: "蕾哈娜",
                photo: "assets/images/musician-photo.png",
                category: "流行音乐"),
            MusicianCard(
                name: "蕾哈娜",
                photo: "assets/images/musician-photo.png",
                category: "流行音乐"),
            MusicianCard(
                name: "蕾哈娜",
                photo: "assets/images/musician-photo.png",
                category: "流行音乐"),
            MusicianCard(
                name: "蕾哈娜",
                photo: "assets/images/musician-photo.png",
                category: "流行音乐")
          ],
        )
      ],
    );
  }
}
