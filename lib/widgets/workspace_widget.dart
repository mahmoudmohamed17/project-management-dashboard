import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/custom_background_container.dart';
import 'package:project_management_dashboard/widgets/workspace_body_widget.dart';
import 'package:project_management_dashboard/widgets/workspace_header_widget.dart';

class WorkspaceWidget extends StatelessWidget {
  const WorkspaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          WorkspaceHeaderWidget(),
          Divider(),
          SizedBox(height: 40,),
          Expanded(child: WorkspaceBodyWidget()),
        ],
      ),
    );
  }
}


