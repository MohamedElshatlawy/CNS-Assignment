import 'package:flutter/material.dart';

class AppDropdownButtonFormFieldModel {
  final String? hint;
  String value;
  final InputDecoration decoration;
  final List<DropdownMenuItem<String>> items;
  final bool showLabel;
  final BorderRadiusGeometry? borderRadius;
  final void Function(String?)? onChangeInput;

  AppDropdownButtonFormFieldModel({
    this.hint,
    this.onChangeInput,
    required this.showLabel,
    required this.value,
    required this.items,
    required this.decoration,
    this.borderRadius,
  });
}
