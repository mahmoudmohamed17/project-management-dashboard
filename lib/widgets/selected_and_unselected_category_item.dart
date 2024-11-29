import 'package:flutter/material.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';

class SelectedCategoryItem extends StatelessWidget {
  const SelectedCategoryItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        color: const Color(0xffF1EFFD),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color(0xff787486))),
      ),
      alignment: Alignment.center,
      child: Text(
          textAlign: TextAlign.center,
          title,
          style: AppStyles.styleSemiBold16(context)),
    );
  }
}

class UnselectedCategoryItem extends StatelessWidget {
  const UnselectedCategoryItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),

      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color(0xff787486))),
      ),
      alignment: Alignment.center,
      child: Text(
        textAlign: TextAlign.center,
        title,
        style: AppStyles.styleMedium16(context)
            .copyWith(color: const Color(0xff787486)),
      ),
    );
  }
}
