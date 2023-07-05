import 'package:flutter/material.dart';
import 'package:truexgold/src/config/manager/style.dart';

class AppColors {
  static Color deepBlueBG = HexColor.fromHex('#02001F');
  static Color text = Colors.white;
  static Color activeButton = HexColor.fromHex('#3EB489');
  static Color inputDecoratorColor = HexColor.fromHex('#ABDECC');
  static Color iconColor = HexColor.fromHex("FFFFFF");
  static Color placeholderColor = HexColor.fromHex("#ABDECC");
  static Color pinCodeBackgroundColor = HexColor.fromHex("#364366");
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
  //TextTheme for application
  textTheme: TextTheme(
      titleLarge: getBodyLargeStyle(color: AppColors.text),
      bodyLarge: getBodyMediumBoldStyle(color: AppColors.text),
      bodyMedium: getBodyMediumRegularStyle(color: AppColors.text),
      bodySmall: getBodySmallStyle(color: AppColors.text),
      labelSmall: getButtonLabelStyle(color: AppColors.text)),
  //Scaffold Background color
  scaffoldBackgroundColor: AppColors.deepBlueBG,
  //Appbar Theme
  appBarTheme:
  const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
  // TextButton theme
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.activeButton,
        textStyle: getBodySmallStyle(color: AppColors.activeButton, fontSize: 14),
      )),
  // Elevatedbutton Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(275, 40),
        backgroundColor: AppColors.activeButton,
        foregroundColor: Colors.black,
        textStyle: getBodySmallStyle(color: Colors.black, fontSize: 14),
      )),
  inputDecorationTheme: InputDecorationTheme(
      hintStyle: getBodySmallStyle(color: Colors.black, fontSize: 14),
      fillColor: AppColors.placeholderColor.withOpacity(0.3),
      filled: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
  primarySwatch: Colors.grey,
);

getApplicationTheme() {
  return _appTheme;
}