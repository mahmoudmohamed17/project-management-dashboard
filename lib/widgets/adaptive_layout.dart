import 'package:flutter/material.dart';
import 'package:project_management_dashboard/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  final WidgetBuilder mobile, tablet, desktop;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return LayoutBuilder(builder: (context, constraints) {
      if (SizeConfig.width < SizeConfig.tabletBreakpoint) {
        return mobile(context);
      } else if (SizeConfig.width < SizeConfig.desktopBreakpoint) {
        return tablet(context);
      } else {
        return desktop(context);
      }
    });
  }
}
