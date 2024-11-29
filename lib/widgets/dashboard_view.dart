import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/size_config.dart';
import 'package:project_management_dashboard/widgets/adaptive_layout.dart';
import 'package:project_management_dashboard/widgets/custom_drawer.dart';
import 'package:project_management_dashboard/widgets/desktop_layout.dart';
import 'package:project_management_dashboard/widgets/mobile_layout.dart';
import 'package:project_management_dashboard/widgets/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: drawerKey,
      drawer: const CustomDrawer(),
      appBar: SizeConfig.width < SizeConfig.desktopBreakpoint
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    drawerKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.bars,
                    color: Colors.black,
                  )),
              backgroundColor: const Color(0xffDBDBDB),
              title: Flexible(
                child: Text(
                  'Project Management',
                  style: AppStyles.styleSemiBold20(context),
                ),
              ),
              centerTitle: true,
            )
          : null,
      body: AdaptiveLayout(
        mobile: (context) => const MobileLayout(),
        tablet: (context) => const TabletLayout(),
        desktop: (context) => const DesktopLayout(),
      ),
    );
  }
}
