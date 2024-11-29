import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/post_item.dart';

class PostsLists extends StatelessWidget {
  const PostsLists({super.key, required this.isDone});
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return PostItem(
          isDone: isDone,
        );
      },
    );
  }
}
