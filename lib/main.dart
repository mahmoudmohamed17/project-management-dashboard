import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/dashboard_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => const ProjectManagementDashboard()));
}

class ProjectManagementDashboard extends StatelessWidget {
  const ProjectManagementDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: const DashboardView());
  }
}
