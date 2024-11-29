import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class InviteUsersWidget extends StatelessWidget {
  const InviteUsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesAddSquare2),
        const SizedBox(
          width: 7,
        ),
        Text(
          'Invite',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff5030E5),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Image.asset(Assets.imagesUsersList),
      ],
    );
  }
}
