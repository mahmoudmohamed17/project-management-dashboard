import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/categories_pages_list.dart';
import 'package:project_management_dashboard/widgets/dots_indicator.dart';

class CategoriesPageView extends StatefulWidget {
  const CategoriesPageView({super.key});

  @override
  State<CategoriesPageView> createState() => _CategoriesPageViewState();
}

class _CategoriesPageViewState extends State<CategoriesPageView> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DotsIndicator(currentPageIndex: currentIndex),
        const SizedBox(height: 20,),
        CategoriesPagesList(
          pageController: pageController,
        ),
      ],
    );
  }
}
