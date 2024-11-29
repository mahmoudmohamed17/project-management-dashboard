import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class WorkspaceBodyMainTitle extends StatelessWidget {
  const WorkspaceBodyMainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Mobile App',
            style: AppStyles.styleSemiBold46(context),
          ),
        ),
        const SizedBox(
          width: 19,
        ),
        SvgPicture.asset(Assets.imagesEdit),
        const SizedBox(
          width: 12,
        ),
        SvgPicture.asset(Assets.imagesLink),
      ],
    );
  }
}
