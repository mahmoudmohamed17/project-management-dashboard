import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/drawer_model.dart';
import 'package:project_management_dashboard/utils/assets.dart';
import 'package:project_management_dashboard/widgets/drawer_item.dart';

class CustomDrawerList extends StatelessWidget {
  const CustomDrawerList({super.key});
  static const items = [
    DrawerModel(icon: Assets.imagesCategory, title: 'Home'),
    DrawerModel(icon: Assets.imagesMessage, title: 'Message'),
    DrawerModel(icon: Assets.imagesTaskSquare, title: 'Tasks'),
    DrawerModel(icon: Assets.imagesProfile2user, title: 'Members'),
    DrawerModel(icon: Assets.imagesSetting2, title: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return DrawerItem(drawerModel: items[index]);
        });
  }
}
