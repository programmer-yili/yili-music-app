import 'package:flutter/material.dart';
import 'package:yili_music_app/theme.dart';

class SquareCard extends StatelessWidget {
  const SquareCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.image})
      : super(key: key);

  final String title, description, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 140,
              height: 140,
              margin: const EdgeInsets.only(bottom: 10),
              child: Image.asset(image)),
          Text(
            title,
            style: primaryText,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: secondaryText,
          )
        ],
      ),
    );
  }
}
