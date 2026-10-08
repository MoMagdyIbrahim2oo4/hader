import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../packages/onboarding_packages/whats_new_feature.dart';
import '../../packages/onboarding_packages/whats_new_page.dart';
import 'onboarding_feature_model.dart';

class CustomOnboardingPage extends StatelessWidget {
  final String imagePath;
  final String titleText;
  final String descriptionText;
  final List<OnboardingFeatureModel> features;

  const CustomOnboardingPage({
    super.key,
    required this.imagePath,
    required this.titleText,
    required this.descriptionText,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return WhatsNewPage(
      titleTopIndent: 10.h,
      titleToBodySpacing: 20.h,
      titleFlex: 18,
      bodyPadding: EdgeInsets.symmetric(horizontal: 16.w),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          SizedBox(height: 12.h),
          Text(
            titleText,
            textAlign: TextAlign.center,
            style:Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 8.h),
          Text(
            descriptionText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      ),
      features: features.map((feature) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.all(14.h),
          child: Directionality(
            textDirection: TextDirection.rtl, // لضبط الأيقونة على اليمين والنص على الشمال
            child: WhatsNewFeature(
              icon: SvgPicture.asset(
                feature.iconPath,
                width: 28.83.w,
                height: 34.33.h,
              ),
              title: Text(
                feature.title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              description: Text(
                feature.description,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}