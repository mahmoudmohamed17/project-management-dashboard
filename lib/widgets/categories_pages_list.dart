import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/post_category_model.dart';
import 'package:project_management_dashboard/widgets/post_category_widget.dart';

class CategoriesPagesList extends StatelessWidget {
  const CategoriesPagesList({
    super.key, required this.pageController,
  });

  final PageController pageController;
  static const items = [
    PostCategoryModel(color: Color(0xff5030E5), title: 'To Do'),
    PostCategoryModel(color: Color(0xffFFA500), title: 'On Progress'),
    PostCategoryModel(color: Color(0xff8BC48A), title: 'Done')
  ];
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(
            3,
            (index) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: PostCategoryWidget(postCategoryModel: items[index]))));
  }
}
