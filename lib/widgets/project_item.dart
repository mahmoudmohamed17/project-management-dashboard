import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/project_item_model.dart';
import 'package:project_management_dashboard/widgets/selected_and_unselected_project_item.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem(
      {super.key, required this.projectItemModel, required this.isActive});
  final ProjectItemModel projectItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? SelectedProjectItem(projectItemModel: projectItemModel)
        : UnselectedProjectItem(projectItemModel: projectItemModel);
  }
}

