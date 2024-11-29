import 'package:flutter/material.dart';

class SizeConfig {
  static const double tabletBreakpoint = 800;
  static const double desktopBreakpoint = 1285;
  static late double height, width;
  
  // main method to get the dimensions of the current screen
  static init(context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
