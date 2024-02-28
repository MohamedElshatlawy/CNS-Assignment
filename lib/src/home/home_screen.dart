import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/common/app_colors/app_colors.dart';
import '../../core/common/app_font_style/app_font_style_global.dart';
import '../../core/common/assets.dart';
import '../../core/shared_components/app_text/app_text.dart';
import '../../core/shared_components/app_text/models/app_text_model.dart';
import '../../core/util/localization/app_localizations.dart';
import 'widgets/day_cloud_status.dart';
import 'widgets/services_counter.dart';
import 'widgets/services_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  // static const String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.mainBg),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            Assets.logo,
                            width: 80.w,
                            height: 90.h,
                          ),
                          Row(
                            children: [
                              Image.asset(Assets.search),
                              SizedBox(
                                width: 20.w,
                              ),
                              Image.asset(Assets.notification),
                            ],
                          ),
                        ],
                      ),
                      AppText(
                        text: AppLocalizations.of(context)!.translate('hi'),
                        model: AppTextModel(
                            style: AppFontStyleGlobal(
                                    AppLocalizations.of(context)!.locale)
                                .label
                                .copyWith(
                                  fontSize: 18.sp,
                                  color: AppColors.white,
                                )),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      AppText(
                        text:
                            AppLocalizations.of(context)!.translate('welcome'),
                        model: AppTextModel(
                            style: AppFontStyleGlobal(
                                    AppLocalizations.of(context)!.locale)
                                .label
                                .copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.white,
                                )),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 360.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        decoration: BoxDecoration(
                            color: const Color(0xffa1b6d3).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(16.r)),
                        child: Column(
                          children: [
                            AppText(
                              text: "wednesday, August 06",
                              model: AppTextModel(
                                  style: AppFontStyleGlobal(
                                          AppLocalizations.of(context)!.locale)
                                      .label
                                      .copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.white,
                                      )),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            AppText(
                              text: "Riyadh, Saudi Arabia",
                              model: AppTextModel(
                                  style: AppFontStyleGlobal(
                                          AppLocalizations.of(context)!.locale)
                                      .label
                                      .copyWith(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.white,
                                      )),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Image.asset(
                              Assets.weatherIcon,
                              width: 100.w,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            AppText(
                              text: "Partly Cloud",
                              model: AppTextModel(
                                  style: AppFontStyleGlobal(
                                          AppLocalizations.of(context)!.locale)
                                      .label
                                      .copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white,
                                      )),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            AppText(
                              text: '27°',
                              model: AppTextModel(
                                  style: AppFontStyleGlobal(
                                          AppLocalizations.of(context)!.locale)
                                      .label
                                      .copyWith(
                                        fontSize: 40.sp,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.white,
                                      )),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DayCloudStatus(
                                  cloudStatusIcon: Assets.suny,
                                  day: "THU",
                                ),
                                DayCloudStatus(
                                  cloudStatusIcon: Assets.suny,
                                  day: "FRI",
                                ),
                                DayCloudStatus(
                                  cloudStatusIcon: Assets.sunyCloud,
                                  day: "SAT",
                                ),
                                DayCloudStatus(
                                  cloudStatusIcon: Assets.cloud,
                                  day: "SUN",
                                ),
                                DayCloudStatus(
                                  cloudStatusIcon: Assets.veryCloud,
                                  day: "MON",
                                ),
                                DayCloudStatus(
                                  cloudStatusIcon: Assets.rainy,
                                  day: "TUE",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ServicesCounter(
                            counter: "53",
                            title: "Service Applied",
                            startGradientColor: Color(0xff55b4ff),
                            endGradientColor: Color(0xff4870ff),
                          ),
                          ServicesCounter(
                            counter: "33",
                            title: "Service Approved",
                            startGradientColor: Color(0xff64e47d),
                            endGradientColor: Color(0xff4ed3a9),
                          ),
                          ServicesCounter(
                            counter: "20",
                            title: "Service Rejected",
                            startGradientColor: Color(0xfffbce41),
                            endGradientColor: Color(0xffff7138),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: "Services",
                            model: AppTextModel(
                                style: AppFontStyleGlobal(
                                        AppLocalizations.of(context)!.locale)
                                    .label
                                    .copyWith(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white,
                                    )),
                          ),
                          AppText(
                            text: "See All",
                            model: AppTextModel(
                                style: AppFontStyleGlobal(
                                        AppLocalizations.of(context)!.locale)
                                    .label
                                    .copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.white,
                                    )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const ServicesWidget(
                        icon: Assets.climate,
                        title: "Climate data \nrequest",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const ServicesWidget(
                        icon: Assets.requestWeatherReport,
                        title: "Request a weather \nreport",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const ServicesWidget(
                        icon: Assets.freeForecast,
                        title: "Free forecast report \nrequest",
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
