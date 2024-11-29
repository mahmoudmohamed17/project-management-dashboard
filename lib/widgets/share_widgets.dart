import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/utils/assets.dart';
import 'package:project_management_dashboard/widgets/custom_button.dart';

class ShareWidgets extends StatelessWidget {
  const ShareWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomButton(),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(Assets.imagesLine),
        const SizedBox(
          width: 20,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: const BorderSide(color: Color(0xff787486))),
              color: const Color(0xff5030E5)),
          child: SvgPicture.asset(Assets.imagesTwoWhiteLinesHorizontal),
        ),
        const SizedBox(
          width: 22,
        ),
        SvgPicture.asset(Assets.imagesMenu),
      ],
    );
  }
}
