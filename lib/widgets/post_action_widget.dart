import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';

class PostActionWidget extends StatelessWidget {
  const PostActionWidget({super.key, required this.icon, required this.title});
  final String icon, title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, ),
        const SizedBox(
          width: 5,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: AppStyles.styleMedium12(context),
          ),
        )
      ],
    );
  }
}
