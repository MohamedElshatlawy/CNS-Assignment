import 'package:flutter/material.dart';

class AppCheckBoxModel {
  final bool isChecked;
  final Function onChanged;
  final String text;
  final String buttonText;
  final Function onPressedTermsAndConditions;
  final BoxDecoration decoration;
  final TextStyle textModel;
  final TextStyle buttonModel;

  AppCheckBoxModel({
    required this.isChecked,
    required this.onChanged,
    required this.text,
    required this.buttonText,
    required this.onPressedTermsAndConditions,
    required this.decoration,
    required this.textModel,
    required this.buttonModel,
  });
}
