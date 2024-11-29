import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/custom_drawer_list.dart';
import 'package:project_management_dashboard/widgets/my_projects_section_header.dart';
import 'package:project_management_dashboard/widgets/project_item_list.dart';
import 'package:project_management_dashboard/widgets/user_badge_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserBadgeWidget(),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                ),
                CustomDrawerList(),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 25,
                ),
                MyProjectsSectionHeader(),
                 SizedBox(
                  height: 15,
                ),
                ProjectItemList(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
