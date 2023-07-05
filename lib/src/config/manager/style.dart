import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'font.dart';

TextStyle _getLatoTextStyle(
    double fontSize,
    FontWeight fontweight,
    Color color,
    ) {
  return GoogleFonts.lato(
    fontSize: fontSize,
    fontWeight: fontweight,
    color: color,
  );
}

getBodyLargeStyle({double fontSize = AppFontSize.s24, required Color color}) {
  return _getLatoTextStyle(fontSize, AppFontWeight.bold, color);
}

getBodyMediumBoldStyle(
    {double fontSize = AppFontSize.s16, required Color color}) {
  return _getLatoTextStyle(fontSize, AppFontWeight.semiBold, color);
}

getBodyMediumRegularStyle(
    {double fontSize = AppFontSize.s14, required Color color}) {
  return _getLatoTextStyle(fontSize, AppFontWeight.regular, color);
}

getBodySmallStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getLatoTextStyle(fontSize, AppFontWeight.medium, color);
}

getButtonLabelStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getLatoTextStyle(fontSize, AppFontWeight.semiBold, color);
}