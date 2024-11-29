import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class ThoughtsTimeWidget extends StatelessWidget {
  const ThoughtsTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: const Color(0xffF5F5F5)),
      child: Column(
        children: [
          SvgPicture.asset(Assets.imagesLampOn),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Thoughts Time',
            style: AppStyles.styleMedium14(context),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            textAlign: TextAlign.center,
            'We don’t have any notice for you, till then you can share your thoughts with your peers.',
            style: AppStyles.styleRegular12(context),
          ),
          const SizedBox(
            height: 14,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  color: Colors.white),
              alignment: Alignment.center,
              child: FittedBox(
                child: Text(
                  'Write a message',
                  style: AppStyles.styleMedium14(context),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
