import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_management_dashboard/models/drawer_model.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerModel});
  final DrawerModel drawerModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.icon),
      title: FittedBox(
                fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,

        child: Text(
          drawerModel.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
