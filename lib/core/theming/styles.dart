import 'package:flutter/material.dart';
import 'package:flutter_advance/core/theming/app_colors.dart';
import 'package:flutter_advance/core/theming/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font32blueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainColor,
  );
  static TextStyle font24blueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainColor ,
  );
  static TextStyle font13grey = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: AppColors.fontGreyColor,
  );
  static TextStyle fontnormal14grey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.normal,
    color: AppColors.fontGreyColor,
  );
  static TextStyle font16white500weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
}
