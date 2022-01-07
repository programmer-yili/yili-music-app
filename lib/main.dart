import 'package:flutter/material.dart';
import 'package:yili_music_app/pages/home.dart';
import 'package:yili_music_app/pages/login.dart';
import 'package:yili_music_app/theme.dart';


void main() {
  runApp(const YuanLiMusic());
}

class YuanLiMusic extends StatelessWidget {

  const YuanLiMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '猿力音乐',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
        tabBarTheme: tabBarTheme
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login()
      },
    );
  }
}