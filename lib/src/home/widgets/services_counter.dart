import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/app_colors/app_colors.dart';
import '../../../core/common/app_font_style/app_font_style_global.dart';
import '../../../core/shared_components/app_text/app_text.dart';
import '../../../core/shared_components/app_text/models/app_text_model.dart';
import '../../../core/util/localization/app_localizations.dart';

class ServicesCounter extends StatelessWidget {
  const ServicesCounter(
      {super.key,
      required this.startGradientColor,
      required this.endGradientColor,
      required this.counter,
      required this.title});
  final Color startGradientColor;
  final Color endGradientColor;
  final String counter;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        gradient: LinearGradient(
          colors: [startGradientColor, endGradientColor],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // stops: [0.0, 1.0],
          // tileMode: TileMode.clamp
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: AppText(
              text: counter,
              model: AppTextModel(
                  style:
                      AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                          .label
                          .copyWith(
                            fontSize: 35.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          )),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SizedBox(
              width: 60.w,
              child: AppText(
                text: title,
                model: AppTextModel(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                            .label
                            .copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
