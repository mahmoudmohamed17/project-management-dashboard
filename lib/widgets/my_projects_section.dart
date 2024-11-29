import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/my_projects_section_header.dart';
import 'package:project_management_dashboard/widgets/project_item_list.dart';

class MyProjectsSection extends StatelessWidget {
  const MyProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MyProjectsSectionHeader(),
        SizedBox(
          height: 20,
        ),
        ProjectItemList()
      ],
    );
  }
}
