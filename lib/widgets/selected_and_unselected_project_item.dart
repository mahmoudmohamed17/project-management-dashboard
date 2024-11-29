import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_management_dashboard/models/project_item_model.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';

class SelectedProjectItem extends StatelessWidget {
  const SelectedProjectItem({super.key, required this.projectItemModel});

  final ProjectItemModel projectItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xffF1EFFD)),
      child: ListTile(
        leading: Container(
          height: 8,
          width: 8,
          decoration: ShapeDecoration(
              shape: const OvalBorder(), color: projectItemModel.color),
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            projectItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        trailing: const Icon(
          FontAwesomeIcons.ellipsis,
          size: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}

class UnselectedProjectItem extends StatelessWidget {
  const UnselectedProjectItem({super.key, required this.projectItemModel});

  final ProjectItemModel projectItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 8,
        width: 8,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: projectItemModel.color),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          projectItemModel.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
