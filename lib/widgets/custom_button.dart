import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: const BorderSide(color: Color(0xff787486)))),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesProfile2user),
          const SizedBox(width: 6,),
          Text(
            'Share',
            style: AppStyles.styleMedium16(context),
          )
        ],
      ),
    );
  }
}
