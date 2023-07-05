import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'font.dart';

TextStyle _getPoppinsTextStyle(
    double fontSize,
    FontWeight fontweight,
    Color color,
    ) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontweight,
    color: color,
  );
}

getBodyLargeStyle({double fontSize = AppFontSize.s36, required Color color}) {
  return _getPoppinsTextStyle(fontSize, AppFontWeight.bold, color);
}

getButtonLabelStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getPoppinsTextStyle(fontSize, AppFontWeight.medium, color);
}