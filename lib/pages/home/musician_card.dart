import 'package:flutter/material.dart';

class MusicianCard extends StatelessWidget {
  const MusicianCard(
      {Key? key,
      required this.name,
      required this.photo,
      required this.category})
      : super(key: key);
  final String name, photo, category;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(120))),
                child: Image.asset(photo)),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF002150),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              category,
              style: TextStyle(color: const Color(0xFF7A869A), fontSize: 12),
            )
          ]),
    );
  }
}
