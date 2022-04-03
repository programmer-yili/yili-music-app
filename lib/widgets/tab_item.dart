import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme.dart';

class TabItem extends StatelessWidget {
  const TabItem(
      {Key? key,
      required this.active,
      required this.text,
      required this.icon,
      required this.onPress})
      : super(key: key);

  final bool active;
  final String text;
  final String icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: active ? 0 : 8,
        ),
        SvgPicture.asset(
          "assets/icons/" + (active ? icon + "-active" : icon) + ".svg",
          width: active ? 35 : 21,
          height: active ? 35 : 21,
        ),
        SizedBox(
          height: active ? 3 : 9,
        ),
        Text(
          text,
          style: secondaryText,
        )
      ],
    );
  }
}
