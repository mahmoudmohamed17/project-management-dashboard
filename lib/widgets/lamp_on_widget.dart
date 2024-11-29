import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class LampOnWidget extends StatelessWidget {
  const LampOnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 66,
      decoration: const ShapeDecoration(
        shape: OvalBorder(),
        color: Color(0xffF5F5F5),
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(Assets.imagesLampOn),
    );
  }
}