import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF3c7cbf);
  static const Color scondaryColor = Color(0xFF6c86a8);
  static const Color primaryColorLight = Color(0xFFECE9F9);
  static const Color primaryColorDark = Color(0xFF362F53);
  static const Color white = Color(0xFFFFFFFF);
  static const Color purple = Color(0xFFA499D1);
  static const Color black = Color(0xFF000000);
  static const Color gray = Color(0xFFC0C0C0);
  static const Color error = Color(0xFFFD4D82);
  static const Color success = Color(0xFF64D8E8);
  static const Color roundButton = Color(0xFF6B9FFA);
  static const Color scaffoldBackgroundColor = Color(0xFFECE9F9);
  static const Color appBar = Color(0xFFFFFFFF);
  static const Color shadowColor = Color(0x0D101C33);
  static const Color textColor = Color(0xff2a4663);
  static const Color cardColor = Color(0xffe2e6ed);

  static const LinearGradient checkBoxGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF52D9D4),
      Color(0xFF533DE7),
    ],
  );
}
