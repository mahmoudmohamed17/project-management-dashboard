import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/post_category_model.dart';
import 'package:project_management_dashboard/widgets/post_category_widget.dart';

class PostsSectionWidget extends StatelessWidget {
  const PostsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: PostCategoryWidget(
          postCategoryModel:
              PostCategoryModel(color: Color(0xff5030E5), title: 'To Do'),
        )),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: PostCategoryWidget(
                postCategoryModel: PostCategoryModel(
                    color: Color(0xffFFA500), title: 'On Progress'))),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: PostCategoryWidget(
                postCategoryModel: PostCategoryModel(
                    color: Color(0xff8BC48A), title: 'Done'))),
      ],
    );
  }
}
