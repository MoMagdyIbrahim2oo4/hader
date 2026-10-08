import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hader/core/constants/app_colors.dart';

class AppTextStyles {
  static final TextStyle cairoBold24DarkNavy = GoogleFonts.cairo(
    fontSize: 24.sp,
    fontWeight: .bold,
    color: AppColors.darkNavy,
  );

  static final TextStyle tajawalRegular16DarkCoolGray = GoogleFonts.tajawal(
    fontSize: 16.sp,
    fontWeight: .w400,
    color: AppColors.darkCoolGray,
  );

  static final TextStyle cairoBold18DarkNavy = GoogleFonts.cairo(
    fontSize: 18.sp,
    fontWeight: .bold,
    color: AppColors.darkNavy,
  );

  static final TextStyle cairoBold18White = GoogleFonts.cairo(
    fontSize: 18.sp,
    fontWeight: .bold,
    color: AppColors.white,
  );

  static final TextStyle tajawalRegular14DarkNavy = GoogleFonts.tajawal(
    fontSize: 14.sp,
    fontWeight: .w400,
    color: AppColors.darkNavy,
  );
}
