import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/categories_page_view.dart';
import 'package:project_management_dashboard/widgets/filter_and_calendar_and_share_widgets.dart';
import 'package:project_management_dashboard/widgets/main_title_text_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                FilterAndCalendarAndShareWidgets(),
                SizedBox(
                  height: 20,
                ),
                MainTitleTextWidget(),
                SizedBox(
                  height: 20,
                ),
                CategoriesPageView(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}