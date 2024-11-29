import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class UserBadgeWidget extends StatelessWidget {
  const UserBadgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerRight,
                child: Text(
                  'Ali Abdulmalik',
                  style: AppStyles.styleRegular16(context),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerRight,
                child: Text(
                  'U.P, India',
                  style: AppStyles.styleRegular14(context),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 22,
        ),
        Image.asset(Assets.imagesUserPic2),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(Assets.imagesArrowDown),
      ],
    );
  }
}
