import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/range_option_model.dart';
import 'package:project_management_dashboard/utils/assets.dart';
import 'package:project_management_dashboard/widgets/range_option_widget.dart';
import 'package:project_management_dashboard/widgets/share_widgets.dart';

class UserOptionsWidget extends StatelessWidget {
  const UserOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        RangeOptionWidget(
          rangeOptionModel:
              RangeOptionModel(icon: Assets.imagesFilter, title: 'Filter'),
        ),
        SizedBox(
          width: 12,
        ),
        RangeOptionWidget(
          rangeOptionModel:
              RangeOptionModel(icon: Assets.imagesCalendar1, title: 'Today'),
        ),
        Expanded(child: SizedBox()),
        ShareWidgets(),
      ],
    );
  }
}
