import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/project_item_model.dart';
import 'package:project_management_dashboard/widgets/project_item.dart';

class ProjectItemList extends StatefulWidget {
  const ProjectItemList({super.key});
  static const items = [
    ProjectItemModel(color: Color(0xff7AC555), title: 'Mobile App'),
    ProjectItemModel(color: Color(0xffFFA500), title: 'Website Redesign'),
    ProjectItemModel(color: Color(0xffE4CCFD), title: 'Design System'),
    ProjectItemModel(color: Color(0xff76A5EA), title: 'Wireframes'),
  ];

  @override
  State<ProjectItemList> createState() => _ProjectItemListState();
}

class _ProjectItemListState extends State<ProjectItemList> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ProjectItemList.items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: ProjectItem(
                projectItemModel: ProjectItemList.items[index],
                isActive: activeIndex == index,
              ));
        });
  }
}
