import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);
  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: colorManager.mainblue);
  static TextStyle font13BlueRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: colorManager.mainblue);
  static TextStyle font24Bluebold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: colorManager.mainblue);
  static TextStyle font13GrayRegular = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.normal, color: colorManager.gray);
  static TextStyle font13blueRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: colorManager.gray);
  static TextStyle font13BlueSemiBold = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: colorManager.gray);
  static TextStyle font13DarkBlueMedium = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: colorManager.mainblue);
  static TextStyle font16WhitesemiBold = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white);
  static TextStyle font14GrayRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: colorManager.gray);
  static TextStyle font14lightGrayRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: colorManager.lightGray);
  static TextStyle font15DarkBlueMedium = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium,
      color: colorManager.mainblue);
  static TextStyle font14bLueSemiBold = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: colorManager.mainblue);
  static TextStyle font24bLueblod = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: colorManager.mainblue);
}
