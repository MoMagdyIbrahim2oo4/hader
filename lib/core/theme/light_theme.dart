import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hader/core/constants/app_colors.dart';
import 'package:hader/core/constants/app_text_styles.dart';

class LightTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.offWhite,
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.cairoBold18DarkNavy,
      bodyMedium: AppTextStyles.cairoBold24DarkNavy,
      bodySmall: AppTextStyles.tajawalRegular14DarkNavy,
      displayLarge: AppTextStyles.tajawalRegular16DarkCoolGray,
      displayMedium: AppTextStyles.cairoBold18White,
    ),
    cardColor: AppColors.lightBlue,
    canvasColor: AppColors.teelGreen,
    colorSchemeSeed: AppColors.pastalBlue,
    shadowColor: AppColors.darkGreen,
    hoverColor: AppColors.blackNigga,
    focusColor: AppColors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blackNigga,
        foregroundColor: AppColors.white,
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        padding: EdgeInsetsDirectional.symmetric(vertical: 14.h)
      ),
    ),
  );
}
