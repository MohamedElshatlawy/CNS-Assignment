import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/app_colors/app_colors.dart';
import '../../common/app_font_style/app_font_style_global.dart';
import '../../util/localization/app_localizations.dart';
import '../assets.dart';
import 'model/app_drop_down_button_form_field_mode.dart';

class AppDropdownButtonFormField extends StatefulWidget {
  final AppDropdownButtonFormFieldModel model;
  const AppDropdownButtonFormField({Key? key, required this.model})
      : super(key: key);

  @override
  State<AppDropdownButtonFormField> createState() =>
      _AppDropdownButtonFormFieldState();
}

class _AppDropdownButtonFormFieldState
    extends State<AppDropdownButtonFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
        top: widget.model.showLabel ? 0 : 9,
      ),
      decoration: BoxDecoration(
        color: AppColors.scondaryColor,
        border: Border.all(color: AppColors.scondaryColor, width: 1),
        borderRadius: widget.model.borderRadius ?? BorderRadius.circular(50.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<String>(
              dropdownColor: AppColors.white,
              style: AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                  .smallTab
                  .copyWith(
                    fontSize: 14.sp,
                    color: AppColors.white,
                  ),
              icon: const SizedBox(),
              decoration: widget.model.decoration,
              value: widget.model.value.isNotEmpty ? widget.model.value : null,
              items: widget.model.items,
              onChanged: widget.model.onChangeInput,
            ),
          ),
          Image.asset(
            Assets.arrow,
            scale: 4,
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}
