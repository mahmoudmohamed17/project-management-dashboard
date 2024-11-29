import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/custome_text_field.dart';
import 'package:project_management_dashboard/widgets/user_action_icons_widget.dart';
import 'package:project_management_dashboard/widgets/user_badge_widget.dart';

class WorkspaceHeaderWidget extends StatelessWidget {
  const WorkspaceHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.07,
        child: const Row(
          children: [
            SizedBox(
              width: 48,
            ),
            Expanded(flex: 2, child: CustomTextField()),
            Expanded(
              child: SizedBox(
                width: 305,
              ),
            ),
            Expanded(child: UserActionIconsWidget()),
            SizedBox(
              width: 50,
            ),
            Expanded(child: UserBadgeWidget())
          ],
        ),
      ),
    );
  }
}
