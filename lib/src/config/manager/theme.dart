import 'package:flutter/material.dart';
import 'package:truexgold/src/config/manager/style.dart';

class AppColors {
  static Color backgroundColor = HexColor.fromHex("#070630");
  static Color primaryText = HexColor.fromHex("#FFFFFF");
  static Color secondaryText = HexColor.fromHex("#CEA600");
  static Color activeButton = HexColor.fromHex('#CEA600');
  static Color iconColor = HexColor.fromHex("FFFFFF");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

ThemeData _appTheme = ThemeData(
  textTheme: TextTheme(
    titleLarge: getBodyLargeStyle(color: AppColors.primaryText)),
  scaffoldBackgroundColor: AppColors.backgroundColor,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
);

getApplicationTheme() {
  return _appTheme;
}