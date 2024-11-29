import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return  Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CustomDotIndicator(isActive: index == currentPageIndex, index: index,),
        );
      }),
    );
  }
}
