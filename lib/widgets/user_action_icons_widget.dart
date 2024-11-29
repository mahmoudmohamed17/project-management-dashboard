import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class UserActionIconsWidget extends StatelessWidget {
  const UserActionIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesCalendar2),
        const SizedBox(
          width: 24,
        ),
        SvgPicture.asset(Assets.imagesMessageQuestion),
        const SizedBox(
          width: 24,
        ),
        SvgPicture.asset(Assets.imagesNotification),
      ],
    );
  }
}
