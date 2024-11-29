import 'package:flutter/material.dart';
import 'package:project_management_dashboard/functions/get_scale_factor.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.9;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
