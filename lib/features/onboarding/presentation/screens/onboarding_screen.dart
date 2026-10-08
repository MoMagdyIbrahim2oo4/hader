import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hader/core/constants/app_images.dart';
import '../../../../core/constants/app_icons.dart';
import '../../core/screen shape/custom_onboarding_page.dart';
import '../../core/screen shape/onboarding_feature_model.dart';
import '../../packages/onboarding_packages/cupertino_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoOnboarding(
        bottomButtonChild: Text(
          'التالي',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        bottomButtonColor: Theme.of(context).hoverColor,
        bottomButtonPadding: EdgeInsets.only(bottom: 10.h, left: 22.w, right: 22.w),
        onPressedOnLastPage: () {
          // signin page!!!!!!!!!
        },
        pages: [
          CustomOnboardingPage(
            imagePath: AppImages.onboarding1,
            titleText: "حاضر — في موعدك وبكل دقة",
            descriptionText: "منظومة إثبات الحضور الذكية بأحدث تقنيات السياج الجغرافي المشفر والرموز المتغيرة تلقائياً لمنع أي تلاعب.",
            features: [
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding1icon1,
                title: "تحضير فوري في نطاق يصل لـ 50 متراً",
                description: "تسجيل الدخول تلقائياً عند عبور بوابة المقر دون الحاجة للبصمات اليدوية أو الانتظار في طوابير.",
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding1icon2,
                title: "مستشعرات ذكية iBeacon",
                description: "تطابق فائق للحضور داخل الطوابق المغلقة والمكاتب حتى مع انعدام إشارة الأقمار الصناعية (GPS).",
              ),
            ],
          ),
          CustomOnboardingPage(
            imagePath: AppImages.onboarding2,
            titleText: "أمان متكامل ومكافحة التلاعب",
            descriptionText: """نظام مشفر يربط حسابك بهاتفك المعتمد ورموز
              الديناميكية المتغير QR""",
            features: [
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding2icon1,
                title: "حماية وتدقيق الموقع الجغرافي",
                description: """منع برامج تزييف الموقع كلياً (No Mock GPS / VPN
Protected) لضمان التواجد الفعلي داخل النطاق.""",
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding2icon2,
                title: "ربط المعرّف الفريد للجهاز",
                description: """قفل الحساب بمعرف الجهاز (Device ID Binding)
لمنع تسجيل الحضور بالنيابة أو من أجهزة بديلة."""),
              OnboardingFeatureModel(
                  iconPath: AppIcons.onboarding2icon3,
                  title: "رموز QR ديناميكية متغيرة",
                  description: """رمز مشفر يتجدد كل 15 ثانية لمنع تصوير الشاشة
أو تداول الرموز بين الموظفين."""),

            ],
          ),
          CustomOnboardingPage(
            imagePath: AppImages.onboarding3,
            titleText: "إدارتك الذاتية في مكان واحد",
            descriptionText: "متابعة الراتب، طلبات الإجازات والاستئذان، والتقويم التفاعلي بلمسة واحدة",
            features: [
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding3icon1,
                title: "كشف وتفصيل الراتب اللحظيً",
                description: "احتساب فوري للساعات الإضافية والبدلات",
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding3icon2,
                title: "تقديم ومتابعة الإجازات والأذوناتً",
                description: "إشعارات فورية باعتماد المدير المباشر والإدارة",
              ),
              OnboardingFeatureModel(
                iconPath: AppIcons.onboarding3icon3,
                title: "مزامنة سحابية آمنة ومشفرةً",
                description: "ربط مباشر مع أنظمة الموارد البشرية المركزية",
              ),

            ],
          ),

        ],
      ),
    );
  }
}