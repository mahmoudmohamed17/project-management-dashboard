import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/custom_side_panel.dart';
import 'package:project_management_dashboard/widgets/workspace_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CutomSidePanel()),
        VerticalDivider(
          width: 1,
          thickness: 1,
        ),
        Expanded(
          flex: 5,
          child: WorkspaceWidget(),
        ),
      ],
    );
  }
}
