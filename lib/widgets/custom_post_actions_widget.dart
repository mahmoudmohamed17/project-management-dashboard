import 'package:flutter/material.dart';
import 'package:project_management_dashboard/utils/assets.dart';
import 'package:project_management_dashboard/widgets/post_action_widget.dart';

class CustomPostActionsWidgets extends StatelessWidget {
  const CustomPostActionsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        PostActionWidget(icon: Assets.imagesMessage, title: '14 comments'),
        SizedBox(
          width: 14,
        ),
        PostActionWidget(icon: Assets.imagesFolder, title: '10 files'),
      ],
    );
  }
}
