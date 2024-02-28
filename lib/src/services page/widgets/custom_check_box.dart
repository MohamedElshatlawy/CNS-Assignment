import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/app_colors/app_colors.dart';
import '../../../core/common/app_font_style/app_font_style_global.dart';
import '../../../core/shared_components/app_text/app_text.dart';
import '../../../core/shared_components/app_text/models/app_text_model.dart';
import '../../../core/util/localization/app_localizations.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({super.key, required this.text, this.value = false});
  final String text;
  bool? value;
  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(
            color: AppColors.scondaryColor, //your desire colour here
            width: 1.0,
          ),
          shape: RoundedRectangleBorder(
              side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(
                    width: 1.0, color: AppColors.scondaryColor),
              ),
              borderRadius: BorderRadius.circular(3)),
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.scondaryColor; // color when checkbox is selected
            }
            return AppColors
                .scondaryColor; // color when checkbox is not selected
          }),
          value: widget.value, // whether the checkbox is checked or not
          // shape: CircleBorder(),

          onChanged: (bool? value) {
            setState(() {
              widget.value = value;
            });
            // your onChanged logic here
          },
        ),
        // SizedBox(
        //   width: 2.w,
        // ),
        Expanded(
          child: AppText(
            text: widget.text,
            model: AppTextModel(
                style: AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                    .label
                    .copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    )),
          ),
        )
      ],
    );
  }
}
