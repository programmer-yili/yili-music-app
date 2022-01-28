import 'package:flutter/material.dart';

import '../theme.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              color: Color(0xFF002150),
            ),
          ),
          const Spacer(),
          const Text(
            "更多",
            style: TextStyle(fontSize: 14, color: primary),
          )
        ],
      ),
    );
  }
}
