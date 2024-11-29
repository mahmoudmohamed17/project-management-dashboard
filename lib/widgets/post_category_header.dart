import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/post_category_model.dart';
import 'package:project_management_dashboard/utils/app_styles.dart';

class PostCategoryHeader extends StatelessWidget {
  const PostCategoryHeader({super.key, required this.postCategoryModel});
  final PostCategoryModel postCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 8,
          width: 8,
          decoration:
               ShapeDecoration(shape: const OvalBorder(), color: postCategoryModel.color),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          postCategoryModel.title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          height: 20,
          width: 20,
          decoration: const ShapeDecoration(
              shape: OvalBorder(), color: Color(0xffDBDBDB)),
          alignment: Alignment.center,
          child: Text(
            '3',
            style: AppStyles.styleMedium12(context),
          ),
        ),
      ],
    );
  }
}
