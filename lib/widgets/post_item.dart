import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_management_dashboard/functions/get_complexity_level_status.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';
import 'package:project_management_dashboard/widgets/complexity_level_widget.dart';
import 'package:project_management_dashboard/widgets/custom_post_actions_widget.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.isDone});
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComplexityLevelWidget(
                    complexityLevelModel: isDone
                        ? getComplexityLevelStatus(
                            ComplexityLevelEnum.completed)
                        : getComplexityLevelStatus(ComplexityLevelEnum.low)),
                const Icon(
                  FontAwesomeIcons.ellipsis,
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Onboarding Illustrations',
              style: AppStyles.styleSemiBold18(context),
            ),
            const SizedBox(
              height: 7,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                fit: BoxFit.cover,
                Assets.imagesPic1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.imagesUsersG1),
                const CustomPostActionsWidgets()
              ],
            )
          ],
        ),
      ),
    );
  }
}
