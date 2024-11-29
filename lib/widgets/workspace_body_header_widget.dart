import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/invite_users_widget.dart';
import 'package:project_management_dashboard/widgets/workspace_body_main_title.dart';

class WorkspaceBodyHeaderWidget extends StatelessWidget {
  const WorkspaceBodyHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        WorkspaceBodyMainTitle(),
        Expanded(child: SizedBox()),
        InviteUsersWidget(),
      ],
    );
  }
}
