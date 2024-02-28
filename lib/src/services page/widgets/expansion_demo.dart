import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/app_colors/app_colors.dart';
import '../../../core/common/app_font_style/app_font_style_global.dart';
import '../../../core/shared_components/app_text/app_text.dart';
import '../../../core/shared_components/app_text/models/app_text_model.dart';
import '../../../core/util/localization/app_localizations.dart';
import 'expand_and_dismiss_widget.dart';

// ignore: must_be_immutable
class CustomExpansionTile extends StatefulWidget {
  CustomExpansionTile(
      {super.key, this.isExpanded = false, required this.title, this.body});
  bool isExpanded;
  final String title;
  final List<Widget>? body;
  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            trailing: widget.isExpanded
                ? const ExpandAndDismiss(
                    icon: Icons.remove,
                  )
                : const ExpandAndDismiss(
                    icon: Icons.add,
                  ),
            onExpansionChanged: (bool expanded) {
              setState(() => widget.isExpanded = expanded);
            },
            // const ExpandAndDismiss(icon: Icons.add),
            backgroundColor: Colors.transparent,
            title: AppText(
              text: widget.title,
              model: AppTextModel(
                  style:
                      AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                          .label
                          .copyWith(
                            fontSize: 18.sp,
                            color: AppColors.white,
                          )),
            ),
            children: widget.body ?? [const SizedBox()]));
  }
}
