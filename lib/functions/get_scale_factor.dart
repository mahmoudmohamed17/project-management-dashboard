import 'package:flutter/material.dart';
import 'package:project_management_dashboard/utils/size_config.dart';

double getScaleFactor(BuildContext context) {
  // alternative approach to get the screen width instead of media query
  // var disparcher = PlatformDispatcher.instance;
  // var physicalWidth = disparcher.views.first.physicalSize.width;
  // var devicePixelRatio = disparcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio; // the same width as media quert

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakpoint) {
    return width / 450;
  } else if (width < SizeConfig.desktopBreakpoint) {
    return width / 850;
  } else {
    return width / 1550;
  }
}
