import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hader/core/router/app_routes.dart';
import 'package:hader/core/theme/light_theme.dart';
import 'package:hader/features/onboarding/presentation/screens/onboarding_screen.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Hazir',
          debugShowCheckedModeBanner: false,
          theme: LightTheme.lightTheme,
          routes: {AppRoutes.onBoardingScreen: (context) => OnboardingScreen()},
          initialRoute: AppRoutes.onBoardingScreen,
        );
      },
    );
  }
}
