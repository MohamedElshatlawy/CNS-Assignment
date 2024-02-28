import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/app_colors/app_colors.dart';
import '../../../core/common/app_font_style/app_font_style_global.dart';
import '../../../core/shared_components/app_text/app_text.dart';
import '../../../core/shared_components/app_text/models/app_text_model.dart';
import '../../../core/util/localization/app_localizations.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key, required this.title, required this.icon});
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
          color: const Color(0xffa1b6d3).withOpacity(0.5),
          borderRadius: BorderRadius.circular(16.r)),
      child: Row(
        children: [
          Container(
            height: 70.h,
            width: 60.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Center(
              child: Image.asset(
                icon,
                width: 35.w,
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          AppText(
            text: title,
            model: AppTextModel(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                    .label
                    .copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    )),
          )
        ],
      ),
    );
  }
}
