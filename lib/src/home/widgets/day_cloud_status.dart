import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/app_colors/app_colors.dart';
import '../../../core/common/app_font_style/app_font_style_global.dart';
import '../../../core/shared_components/app_text/app_text.dart';
import '../../../core/shared_components/app_text/models/app_text_model.dart';
import '../../../core/util/localization/app_localizations.dart';

class DayCloudStatus extends StatelessWidget {
  const DayCloudStatus(
      {super.key, required this.cloudStatusIcon, required this.day});
  final String cloudStatusIcon;
  final String day;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          cloudStatusIcon,
        ),
        SizedBox(
          height: 5.h,
        ),
        AppText(
          text: day,
          model: AppTextModel(
              style: AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                  .label
                  .copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  )),
        ),
      ],
    );
  }
}
