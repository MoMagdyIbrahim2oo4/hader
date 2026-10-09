import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hader/core/router/app_routes.dart';
import 'package:hader/core/sources/shared_pref.dart';
import 'package:hader/core/theme/light_theme.dart';
import 'package:hader/features/authentication/presentation/screens/host_or_employee.dart';
import 'package:hader/features/host/main_layout/presentation/screens/host_main_layout.dart';
import 'package:hader/features/onboarding/presentation/screens/onboarding_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  bool isSeen = await SharedPref.getSeen();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/lang',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      saveLocale: true,
      child: DevicePreview(
        enabled: true,
        builder: (context) => MyApp(isSeen: isSeen),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isSeen;
  const MyApp({super.key, required this.isSeen});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          title: 'Hazir',
          debugShowCheckedModeBanner: false,
          theme: LightTheme.lightTheme,
          routes: {
            AppRoutes.onBoardingScreen: (context) => OnboardingScreen(),
            AppRoutes.hostOrEmployee: (context) => HostOrEmployee(),
            AppRoutes.hostMainLayout: (context) => HostMainLayout(),
          },
          initialRoute: isSeen
              ? AppRoutes.hostOrEmployee
              : AppRoutes.onBoardingScreen,
        );
      },
    );
  }
}
