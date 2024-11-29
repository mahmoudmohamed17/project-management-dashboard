import 'package:flutter/material.dart';
import 'package:project_management_dashboard/functions/get_responsive_font_size.dart';

abstract class AppStyles {
  static TextStyle styleMedium12(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
      color: const Color(0xff787486),
    );
  }

  static TextStyle styleMedium16(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xff787486),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static TextStyle styleRegular12(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xff787486),
    );
  }

  static TextStyle styleRegular14(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: const Color(0xff787486),
    );
  }

  static TextStyle styleMedium14(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }

  static TextStyle styleBold12(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w700,
      color: const Color(0xff787486),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
  static TextStyle styleSemiBold24(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static TextStyle styleRegular16(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
  }

  

  static TextStyle styleSemiBold46(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 46),
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static TextStyle stylesMedium15(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w500,
      color: const Color(0XFFD25B68),
    );
  }

  static TextStyle styleRegular24(context) {
    return  TextStyle(
      fontFamily: 'Inter',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w400,
      color: const Color(0XFFD25B68),
    );
  }
}
