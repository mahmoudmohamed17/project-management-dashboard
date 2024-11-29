import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';
import 'package:project_management_dashboard/utils/assets.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xffF5F5F5),
        filled: true,
        hintText: 'Search for anything...',
        hintStyle: AppStyles.styleRegular14(context),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SvgPicture.asset(Assets.imagesSearchNormal),
        ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: Colors.transparent));
}
