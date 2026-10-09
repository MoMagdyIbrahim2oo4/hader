import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hader/core/constants/app_images.dart';
import 'package:hader/core/router/app_routes.dart';
import 'package:hader/core/sources/shared_pref.dart';
import '../../../../core/constants/app_icons.dart';
import '../core/screen shape/custom_onboarding_page.dart';
import '../core/screen shape/onboarding_feature_model.dart';
import '../packages/onboarding_packages/cupertino_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoOnboarding(
        bottomButtonChild: Text(
          'next'.tr(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        bottomButtonColor: Theme.of(context).hoverColor,
        bottomButtonPadding: EdgeInsets.only(
          bottom: 10.h,
          left: 22.w,
          right: 22.w,
        ),
        onPressedOnLastPage: () {
          SharedPref.setSeen();
          Navigator.of(context).pushNamed(AppRoutes.hostOrEmployee);
        },
        pages: [
          CustomOnboardingPage(
            imagePath: AppImages.onboarding1,
            titleText: "onboarding1_title".tr(),
            descriptionText: "onboarding1_description".tr(),
            features: [
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding1icon1,
                title: "onboarding1_feature1_title".tr(),
                description: "onboarding1_feature1_description".tr(),
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding1icon2,
                title: "onboarding1_feature2_title".tr(),
                description: "onboarding1_feature2_description".tr(),
              ),
            ],
          ),
          CustomOnboardingPage(
            imagePath: AppImages.onboarding2,
            titleText: "onboarding2_title".tr(),
            descriptionText: "onboarding2_description".tr(),
            features: [
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding2icon1,
                title: "onboarding2_feature1_title".tr(),
                description: "onboarding2_feature1_description".tr(),
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding2icon2,
                title: "onboarding2_feature2_title".tr(),
                description: "onboarding2_feature2_description".tr(),
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding2icon3,
                title: "onboarding2_feature3_title".tr(),
                description: "onboarding2_feature3_description".tr(),
              ),
            ],
          ),
          CustomOnboardingPage(
            imagePath: AppImages.onboarding3,
            titleText: "onboarding3_title".tr(),
            descriptionText: "onboarding3_description".tr(),
            features: [
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding3icon1,
                title: "onboarding3_feature1_title".tr(),
                description: "onboarding3_feature1_description".tr(),
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding3icon2,
                title: "onboarding3_feature2_title".tr(),
                description: "onboarding3_feature2_description".tr(),
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding3icon3,
                title: "onboarding3_feature3_title".tr(),
                description: "onboarding3_feature3_description".tr(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
