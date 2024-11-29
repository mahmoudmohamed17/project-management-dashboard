import 'package:flutter/material.dart';
import 'package:project_management_dashboard/functions/get_color_of_index.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive, required this.index});
  final bool isActive;
  final int index;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: 15,
      width: 15,
      decoration: ShapeDecoration(
        shape: const  CircleBorder(),
        color: isActive ? getColorOfIndex(index) : const Color(0xffE5E4E2),
      ),
    );
  }
}
