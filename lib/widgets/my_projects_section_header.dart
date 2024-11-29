import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class MyProjectsSectionHeader extends StatelessWidget {
  const MyProjectsSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            'MY PROJECTS',
            style: AppStyles.styleBold12(context),
          ),
          const Expanded(child: SizedBox()),
          SvgPicture.asset(Assets.imagesAddSquare1)
        ],
      ),
    );
  }
}
