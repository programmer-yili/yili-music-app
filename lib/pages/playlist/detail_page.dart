import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yili_music_app/theme.dart';
import 'package:yili_music_app/widgets/music_list.dart';

import 'header.dart';

class PlaylistDetailPage extends StatefulWidget {
  const PlaylistDetailPage({Key? key}) : super(key: key);

  @override
  State createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends State<PlaylistDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: <Widget>[
          SizedBox(
              width: 375,
              height: 235,
              child: SvgPicture.asset('assets/images/playlist-back-image.svg')),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Header(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    PrimaryButton(
                      child: Text("播放"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 34,
                ),
                MusicList()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required Widget this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(primary),
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(20)))),
        fixedSize: MaterialStateProperty.all<Size>(const Size(221, 44)),
      ),
    );
  }
}
