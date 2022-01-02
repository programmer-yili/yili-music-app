import 'package:flutter/material.dart';


const int _bluePrimaryValue = 0xFF0041C4;


const MaterialColor primary = MaterialColor(
  _bluePrimaryValue,
  <int, Color>{
    50: Color(0xFFE7E9F9),
    100: Color(0xFFC2C8F1),
    200: Color(0xFF98A4E7),
    300: Color(0xFF6C81DE),
    400: Color(0xFF4765D7),
    500: Color(0xFF0C49CF),
    600: Color(_bluePrimaryValue),
    700: Color(0xFF0037B8),
    800: Color(0xFF002CAD),
    900: Color(0xFF00189A),
  },
);


const TabBarTheme tabBarTheme = TabBarTheme(
  labelColor: primary,
  unselectedLabelColor: Color(0xFF7A869A),
);