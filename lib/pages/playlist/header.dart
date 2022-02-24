import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yili_music_app/theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 125),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: 160,
            height: 160,
            child: SvgPicture.asset('assets/images/album.svg'),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text("全球100佳音乐歌单",
                style: TextStyle(
                  fontSize: 18,
                  color: primaryTextColor,
                )),
          ),
          const Text(
            "一些难忘的节奏",
            style: TextStyle(fontSize: 12, color: secondaryTextColor),
          )
        ],
      ),
    );
  }
}
