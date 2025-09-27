import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.pink,
  Colors.brown,
  Colors.grey,
  Colors.black,
];

class AppTheme {

  final int selectColor;
  final bool isDark;

  AppTheme({this.selectColor = 0, this.isDark = false});

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectColor],
    brightness: isDark ? Brightness.dark : Brightness.light,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: colorList[selectColor],
    )
  );
}