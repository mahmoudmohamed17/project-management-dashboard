import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';
import 'package:project_management_dashboard/widgets/custom_background_container.dart';
import 'package:project_management_dashboard/widgets/custom_drawer_list.dart';
import 'package:project_management_dashboard/widgets/my_projects_section.dart';
import 'package:project_management_dashboard/widgets/thoughts_time_widget.dart';

class CutomSidePanel extends StatelessWidget {
  const CutomSidePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.07,
              child: ListTile(
                  leading: SvgPicture.asset(Assets.imagesLogo),
                  title: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Project M.',
                      style: AppStyles.styleSemiBold20(context),
                    ),
                  ),
                  trailing: SvgPicture.asset(Assets.imagesTwoArrowsBack)),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomDrawerList(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: MyProjectsSection(),
          ),
          const SizedBox(
            height: 55,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ThoughtsTimeWidget(),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}
