import 'package:flutter/material.dart';
import 'package:yili_music_app/theme.dart';

class MusicCard extends StatelessWidget {
  const MusicCard(
      {Key? key,
      required this.cover,
      required this.name,
      required this.album,
      required this.artist})
      : super(key: key);

  final String cover, name, album, artist;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 64,
            height: 64,
            child: Stack(children: [
              Image.asset(cover),
              Positioned(
                  top: 24,
                  left: 24,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ))
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: primaryText,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "$album - $artist",
                  style: secondaryText,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
