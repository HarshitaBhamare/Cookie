import 'package:flutter/material.dart';

class CustomThemes {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      colorScheme: ColorScheme.dark(
    primary: Color.fromARGB(255, 227, 128, 53),
    secondary: Color.fromARGB(255, 54, 56, 65),
    background: Color.fromARGB(255, 0, 0, 0),
    onBackground: Color.fromARGB(255, 255, 255, 255),
  ));
}
