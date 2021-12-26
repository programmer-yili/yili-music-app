import 'package:flutter/material.dart';
import 'package:yili_music_app/pages/login.dart';
import 'package:yili_music_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '原力音乐',
      theme: ThemeData(
        primarySwatch: primary,
      ),
      home: const MyHomePage(),
    );
  }
}