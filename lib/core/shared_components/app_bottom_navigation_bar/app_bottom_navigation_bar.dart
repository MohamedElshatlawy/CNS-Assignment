import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/app_colors/app_colors.dart';
import '../../common/app_font_style/app_font_style_global.dart';
import '../../common/app_icon_svg.dart';
import '../../util/localization/app_localizations.dart';
import 'models/app_bottom_navigation_bar_model.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final AppBottomNavigationBarModel model;
  const AppBottomNavigationBar({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: AppLocalizations.of(context)!.locale.languageCode == 'en'
          ? TextDirection.ltr
          : TextDirection.rtl,
      child: Container(
        height: 90.h,
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor.withOpacity(0.20),
              offset: const Offset(0, 4),
              blurRadius: 80,
            )
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: AppColors.textColor,
          unselectedItemColor: AppColors.gray,
          selectedIconTheme: const IconThemeData(color: AppColors.textColor),
          unselectedIconTheme: const IconThemeData(color: AppColors.gray),
          selectedLabelStyle:
              AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                  .subTitle2
                  .copyWith(
                    fontSize: 12.sp,
                    color: AppColors.textColor,
                  ),
          unselectedLabelStyle:
              AppFontStyleGlobal(AppLocalizations.of(context)!.locale)
                  .bodyRegular1
                  .copyWith(
                    fontSize: 10.sp,
                    color: AppColors.gray,
                  ),
          onTap: model.onTap,
          currentIndex: model.currentIndex,
          backgroundColor: AppColors.white,
          items: [
            BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.translate('home'),
              icon: SvgPicture.asset(
                AppIconSvg.home,
                color: model.currentIndex == 0
                    ? AppColors.textColor
                    : AppColors.gray,
                width: 30.w,
                height: 30.h,
              ),
            ),
            BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.translate('services'),
              icon: SvgPicture.asset(
                AppIconSvg.services,
                color: model.currentIndex == 1
                    ? AppColors.textColor
                    : AppColors.gray,
                width: 30.w,
                height: 30.h,
              ),
            ),
            BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.translate('settings'),
              icon: SvgPicture.asset(
                AppIconSvg.setting,
                color: model.currentIndex == 2
                    ? AppColors.textColor
                    : AppColors.gray,
                width: 30.w,
                height: 30.h,
              ),
            ),
            BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.translate('more'),
              icon: SvgPicture.asset(
                AppIconSvg.more,
                color: model.currentIndex == 3
                    ? AppColors.textColor
                    : AppColors.gray,
                width: 30.w,
                height: 30.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
