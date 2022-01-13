import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.onPress})
      : super(key: key);
  final String title, description, image;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 220,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      margin: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: onPress,
        child: Stack(
          children: <Widget>[
            Image.asset(image),
            Positioned(
              left: 15,
              top: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 18, height: 1.5),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                        height: 1.5),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
