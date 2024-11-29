
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class MainTitleTextWidget extends StatelessWidget {
  const MainTitleTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Mobile App',
          style: AppStyles.styleSemiBold24(context),
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(Assets.imagesEdit),
        const SizedBox(
          width: 5,
        ),
        SvgPicture.asset(Assets.imagesLink),
      ],
    );
  }
}
