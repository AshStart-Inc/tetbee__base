import 'package:flutter/material.dart';

extension CarterThemeExtension on ThemeData {
  Color get baseTextColor => textTheme.headlineLarge!.color!;
  Color get primaryTextColor => primaryTextTheme.headlineLarge!.color!;
}
