import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/models/range_option_model.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class RangeOptionWidget extends StatelessWidget {
  const RangeOptionWidget({super.key, required this.rangeOptionModel});
  final RangeOptionModel rangeOptionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xff787486)),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Flexible(
        child: Row(
          children: [
            SvgPicture.asset(rangeOptionModel.icon),
            const SizedBox(
              width: 6,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                rangeOptionModel.title,
                style: AppStyles.styleMedium16(context),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              Assets.imagesArrowDown,
              colorFilter:
                  const ColorFilter.mode(Color(0xff787486), BlendMode.srcIn),
            )
          ],
        ),
      ),
    );
  }
}
