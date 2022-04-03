import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: <Widget>[
          CategoryCard(
              title: '嘻哈',
              description: '1.4万播放量',
              image: 'assets/images/banner.png',
              onPress: () {
                Navigator.pushNamed(context, '/playlist/detail');
              }),
          CategoryCard(
              title: '嘻哈',
              description: '1.4万播放量',
              image: 'assets/images/banner.png',
              onPress: () {}),
          CategoryCard(
              title: '嘻哈',
              description: '1.4万播放量',
              image: 'assets/images/banner.png',
              onPress: () {})
        ],
      ),
    );
  }
}
