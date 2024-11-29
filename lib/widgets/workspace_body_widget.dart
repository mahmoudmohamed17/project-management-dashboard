import 'package:flutter/material.dart';
import 'package:project_management_dashboard/widgets/posts_section_widget.dart';
import 'package:project_management_dashboard/widgets/user_options_widget.dart';
import 'package:project_management_dashboard/widgets/workspace_body_header_widget.dart';

class WorkspaceBodyWidget extends StatelessWidget {
  const WorkspaceBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: WorkspaceBodyHeaderWidget()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(child: UserOptionsWidget()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverFillRemaining(child: PostsSectionWidget()),
        ],
      ),
    );
  }
}
