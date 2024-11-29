import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/post_category_model.dart';
import 'package:project_management_dashboard/widgets/post_category_header.dart';
import 'package:project_management_dashboard/widgets/post_item.dart';

class PostCategoryWidget extends StatelessWidget {
  const PostCategoryWidget({super.key, required this.postCategoryModel});
  final PostCategoryModel postCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: const Color(0xffF5F5F5)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            PostCategoryHeader(
              postCategoryModel: postCategoryModel,
            ),
            const SizedBox(
              height: 24,
            ),
            Divider(
              thickness: 4,
              color: postCategoryModel.color,
            ),
            const SizedBox(
              height: 28,
            ),
            PostItem(isDone: postCategoryModel.title == 'Done'),
            const SizedBox(
              height: 20,
            ),
            PostItem(isDone: postCategoryModel.title == 'Done'),
            const SizedBox(
              height: 20,
            ),
            PostItem(isDone: postCategoryModel.title == 'Done'),
            const SizedBox(
              height: 20,
            ),
            PostItem(isDone: postCategoryModel.title == 'Done'),
          ],
        ),
      ),
    );
  }
}
