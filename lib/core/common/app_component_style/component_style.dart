import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared_components/app_bottom_sheet/models/app_bottom_sheet_model.dart';
import '../app_colors/app_colors.dart';
import '../app_font_style/app_font_style_global.dart';

class ComponentStyle {
  static InputDecoration inputDecoration(
    Locale locale, {
    BorderRadius? borderRadius,
    Color fillColor = AppColors.cardColor,
    Color hintColor = AppColors.textColor,
  }) =>
      InputDecoration(
        hintStyle: AppFontStyleGlobal(locale).smallTab.copyWith(
              fontSize: 14.sp,
              color: hintColor,
              height: 0,
            ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: fillColor,
        labelStyle: AppFontStyleGlobal(locale)
            .smallTab
            .copyWith(fontSize: 12.sp, color: AppColors.textColor, height: 0),
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
        // border: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        // errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        errorStyle: AppFontStyleGlobal(locale).caption.copyWith(
              color: AppColors.error,
            ),
      );
  static ButtonStyle get buttonStyle => ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(323.w, 56.h),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
      );
  static BoxDecoration get buttonDecoration => BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(6.r),
      );

  static AppBottomSheetModel get appBottomSheetModel => AppBottomSheetModel(
        uperContanerDecoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x3AFFFFFF),
              Color(0x00FFFFFF),
            ],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          border: Border.all(
            color: AppColors.primaryColor,
            width: 1,
          ),
        ),
        belowContanerDecoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        imageFilter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
        child: const SizedBox(),
        deviderDecoration: BoxDecoration(
          color: AppColors.primaryColorLight,
          borderRadius: BorderRadius.circular(10),
        ),
      );
}
