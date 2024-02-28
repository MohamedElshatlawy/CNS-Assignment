import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meteorology_poc/src/services%20page/services_view_model.dart';

import '../../core/base/dependency_injection.dart';
import '../../core/common/app_colors/app_colors.dart';
import '../../core/common/app_component_style/component_style.dart';
import '../../core/common/app_dropdown_button_form_field/app_drop_down_button_form_field.dart';
import '../../core/common/app_dropdown_button_form_field/model/app_drop_down_button_form_field_mode.dart';
import '../../core/common/app_font_style/app_font_style_global.dart';
import '../../core/common/assets.dart';
import '../../core/shared_components/app_button/app_button.dart';
import '../../core/shared_components/app_button/models/app_button_model.dart';
import '../../core/shared_components/app_text/app_text.dart';
import '../../core/shared_components/app_text/models/app_text_model.dart';
import '../../core/shared_components/text_form_field/app_text_field.dart';
import '../../core/shared_components/text_form_field/models/app_text_field_model.dart';
import '../../core/util/localization/app_localizations.dart';
// import 'widgets/expand_and_dismiss_widget.dart';
import 'widgets/custom_check_box.dart';
import 'widgets/expansion_demo.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  // bool isExpanded = false;
  final viewModel = sl<ServicesViewModel>();

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
                        text: "Apply",
                        model: AppTextModel(
                            style: AppFontStyleGlobal(
                                    AppLocalizations.of(context)!.locale)
                                .label
                                .copyWith(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                )),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AppText(
                        text: "Climate data request",
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
                        // height: 360.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        decoration: BoxDecoration(
                            color: const Color(0xffa1b6d3).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(16.r)),
                        child: Column(children: [
                          CustomExpansionTile(
                            title: "Station Details",
                            body: [
                              CustomCheckBox(
                                text: "Weather Station Under Construction",
                                value: true,
                              ),
                              CustomCheckBox(
                                text: "List of Weather Station",
                                value: false,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.stationClassification,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "Station Classification",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.stationClass,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "Station Class",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.proposedLoction,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "proposed Station location",
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    suffixIconConstraints: const BoxConstraints(
                                      minWidth: 24,
                                      minHeight: 24,
                                    ),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Image.asset(Assets.location),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.stationCoordenates,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "Station coordinates",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              AppText(
                                  text: "Title Deep Type",
                                  model: AppTextModel(
                                      style: AppFontStyleGlobal(
                                              AppLocalizations.of(context)!
                                                  .locale)
                                          .label
                                          .copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.white,
                                          ))),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomCheckBox(
                                      text: "Ownership",
                                      value: true,
                                    ),
                                  ),
                                  Expanded(
                                    child: CustomCheckBox(
                                      text: "Rent",
                                      value: false,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: AppDropdownButtonFormField(
                                  model: AppDropdownButtonFormFieldModel(
                                    value: viewModel.stationTypeMaterial,
                                    showLabel:
                                        viewModel.stationTypeMaterial.isEmpty
                                            ? true
                                            : false,
                                    borderRadius: BorderRadius.circular(12.r),
                                    onChangeInput: (val) {
                                      viewModel.stationTypeMaterial = val!;
                                      setState(() {});
                                    },
                                    items: viewModel.stationType.map((e) {
                                      return DropdownMenuItem<String>(
                                        value: e,
                                        child: AppText(
                                          text: e,
                                          model: AppTextModel(
                                            style: AppFontStyleGlobal(
                                                    AppLocalizations.of(
                                                            context)!
                                                        .locale)
                                                .smallTab
                                                .copyWith(
                                                    color: AppColors.textColor,
                                                    height: 0),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    decoration: ComponentStyle.inputDecoration(
                                      AppLocalizations.of(context)!.locale,
                                      fillColor: AppColors.scondaryColor,
                                      hintColor: Colors.white,
                                      borderRadius: BorderRadius.circular(12.r),
                                    ).copyWith(
                                      // floatingLabelBehavior: viewModel
                                      //         .selectedEffectiveMaterial.isEmpty
                                      //     ? FloatingLabelBehavior.never
                                      //     : FloatingLabelBehavior.always,
                                      // labelText: viewModel
                                      //         .selectedEffectiveMaterial.isEmpty
                                      //     ? null
                                      //     : AppLocalizations.of(context)!
                                      //         .translate('effective_material'),
                                      hintText: "Station type",
                                    ),
                                  ),
                                ),
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.stationCoordenates,
                                  // keyboardType: TextInputType.text,
                                  minLines: 5,

                                  borderRadius: BorderRadius.circular(12.r),
                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
                                            // height: 0,
                                            fontWeight: FontWeight.w800),
                                  ),
                                  keyboardType: TextInputType.multiline,
                                  textInputAction: TextInputAction.newline,
                                  onChangeInput: (value) {
                                    if (value.length <= 1) {
                                      setState(() {});
                                    }
                                  },

                                  decoration: ComponentStyle.inputDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "Station coordinates",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              AppText(
                                text: "Delegation",
                                model: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.white,
                                        )),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.delegateName,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "Delegate Name",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.iDNumber,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "ID Number",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.authNumber,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "Authorization Reference Number",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.signDigit,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "Signature Digital",
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    suffixIconConstraints: const BoxConstraints(
                                      minWidth: 24,
                                      minHeight: 24,
                                    ),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Image.asset(Assets.upload),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              AppTextField(
                                model: AppTextFieldModel(
                                  controller: viewModel.uploadDoc,
                                  keyboardType: TextInputType.text,

                                  // label: "Station Classification",
                                  appTextModel: AppTextModel(
                                    style: AppFontStyleGlobal(
                                            AppLocalizations.of(context)!
                                                .locale)
                                        .label
                                        .copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.white,
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
                                    fillColor: AppColors.scondaryColor,
                                    hintColor: AppColors.white,
                                    AppLocalizations.of(context)!.locale,
                                  ).copyWith(
                                    hintText: "Upload Document",
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    suffixIconConstraints: const BoxConstraints(
                                      minWidth: 24,
                                      minHeight: 24,
                                    ),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Image.asset(Assets.upload),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          ),
                          const Divider(color: Color(0xff788eab), height: 1),
                          CustomExpansionTile(
                            title: "Applicant Details",
                            body: [SizedBox()],
                          ),
                          const Divider(color: Color(0xff788eab), height: 1),
                          CustomExpansionTile(
                            title: "National Address",
                            body: [SizedBox()],
                          ),
                          const Divider(color: Color(0xff788eab), height: 1),
                          CustomExpansionTile(
                            title: "Contact Details",
                            body: [SizedBox()],
                          ),
                        ]),
                      ),
                      // SizedBox(
                      //   height: 30.h,
                      // ),

                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: AppText(
                          text: "Terms & Conditions",
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
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      AppButton(
                        model: AppButtonModel(
                          child: AppText(
                            text: "Submit",
                            model: AppTextModel(
                                style: AppFontStyleGlobal(
                                        AppLocalizations.of(context)!.locale)
                                    .label
                                    .copyWith(color: AppColors.white)),
                          ),
                          decoration: ComponentStyle.buttonDecoration,
                          buttonStyle: ComponentStyle.buttonStyle,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
