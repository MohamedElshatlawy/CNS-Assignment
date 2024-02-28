import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meteorology_poc/core/common/app_colors/app_colors.dart';

import '../../core/base/dependency_injection.dart';
import '../../core/common/app_component_style/component_style.dart';
import '../../core/common/app_font_style/app_font_style_global.dart';
import '../../core/common/assets.dart';
import '../../core/shared_components/app_button/app_button.dart';
import '../../core/shared_components/app_button/models/app_button_model.dart';
import '../../core/shared_components/app_text/app_text.dart';
import '../../core/shared_components/app_text/models/app_text_model.dart';
import '../../core/shared_components/text_form_field/app_text_field.dart';
import '../../core/shared_components/text_form_field/models/app_text_field_model.dart';
import '../../core/util/localization/app_localizations.dart';
import '../main_screen/view/main_screen.dart';
import 'login_view_model.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static const String routeName = 'Login Screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final viewModel = sl<LoginViewModel>();

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
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Container(
                height: 550.h,
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(18.r)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Image.asset(
                        Assets.NCMLogo,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    AppText(
                      text: AppLocalizations.of(context)!.translate('login'),
                      model: AppTextModel(
                          style: AppFontStyleGlobal(
                                  AppLocalizations.of(context)!.locale)
                              .headingSimiBold2
                              .copyWith(
                                // fontSize: 1.sp,
                                fontWeight: FontWeight.w800,
                                color: AppColors.textColor,
                              )),
                    ),
                    AppTextField(
                      model: AppTextFieldModel(
                        controller: viewModel.userName,
                        keyboardType: TextInputType.text,
                        label: AppLocalizations.of(context)!
                            .translate('user_name'),
                        appTextModel: AppTextModel(
                          style: AppFontStyleGlobal(
                                  AppLocalizations.of(context)!.locale)
                              .label
                              .copyWith(
                                  fontSize: 14.sp,
                                  color: AppColors.textColor,
                                  // height: 0,
                                  fontWeight: FontWeight.w800),
                        ),
                        textInputAction: TextInputAction.done,
                        onChangeInput: (value) {
                          if (value.length <= 1) {
                            setState(() {});
                          }
                        },
                        borderRadius: BorderRadius.circular(12.r),
                        decoration: ComponentStyle.inputDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          AppLocalizations.of(context)!.locale,
                        ).copyWith(
                          hintText: AppLocalizations.of(context)!
                              .translate('user_name'),
                        ),
                      ),
                    ),
                    AppTextField(
                      model: AppTextFieldModel(
                        label:
                            AppLocalizations.of(context)!.translate('password'),
                        appTextModel: AppTextModel(
                          style: AppFontStyleGlobal(
                                  AppLocalizations.of(context)!.locale)
                              .label
                              .copyWith(
                                  fontSize: 14.sp,
                                  color: AppColors.textColor,
                                  // height: 0,
                                  fontWeight: FontWeight.w800),
                        ),
                        controller: viewModel.password,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        onChangeInput: (value) {
                          if (value.length <= 1) {
                            setState(() {});
                          }
                        },
                        decoration: ComponentStyle.inputDecoration(
                          AppLocalizations.of(context)!.locale,
                          borderRadius: BorderRadius.circular(6.r),
                        ).copyWith(
                          // floatingLabelBehavior: viewModel.password.text.isEmpty
                          //     ? FloatingLabelBehavior.never
                          //     : FloatingLabelBehavior.always,
                          // labelText: AppLocalizations.of(context)!
                          //     .translate('password'),
                          hintText: AppLocalizations.of(context)!
                              .translate('password'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppButton(
                      model: AppButtonModel(
                        child: AppText(
                          text:
                              AppLocalizations.of(context)!.translate('login'),
                          model: AppTextModel(
                              style: AppFontStyleGlobal(
                                      AppLocalizations.of(context)!.locale)
                                  .label
                                  .copyWith(color: AppColors.white)),
                        ),
                        decoration: ComponentStyle.buttonDecoration,
                        buttonStyle: ComponentStyle.buttonStyle,
                      ),
                      onPressed: () => Navigator.pushNamed(
                        context,
                        MainScreen.routeName,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AppText(
                      text: AppLocalizations.of(context)!
                          .translate('forget_password'),
                      model: AppTextModel(
                          style: AppFontStyleGlobal(
                                  AppLocalizations.of(context)!.locale)
                              .headingSimiBold2
                              .copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor,
                              )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          text: AppLocalizations.of(context)!
                              .translate('not_a_member'),
                          model: AppTextModel(
                              style: AppFontStyleGlobal(
                                      AppLocalizations.of(context)!.locale)
                                  .headingSimiBold2
                                  .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textColor,
                                  )),
                        ),
                        AppText(
                          text:
                              " ${AppLocalizations.of(context)!.translate('register')}",
                          model: AppTextModel(
                              style: AppFontStyleGlobal(
                                      AppLocalizations.of(context)!.locale)
                                  .headingSimiBold2
                                  .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor,
                                  )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
