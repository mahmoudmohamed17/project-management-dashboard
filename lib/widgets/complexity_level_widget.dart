import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/complexity_level_model.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';

class ComplexityLevelWidget extends StatelessWidget {
  const ComplexityLevelWidget({super.key, required this.complexityLevelModel});
  final ComplexityLevelModel complexityLevelModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: complexityLevelModel.backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: Text(
        complexityLevelModel.title,
        style: AppStyles.styleMedium12(context)
            .copyWith(color: complexityLevelModel.textColor),
      ),
    );
  }
}
