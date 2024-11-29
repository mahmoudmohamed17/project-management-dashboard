import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/range_option_model.dart';
import 'package:project_management_dashboard/utils/assets.dart';
import 'package:project_management_dashboard/widgets/range_option_widget.dart';

class FilterAndCalendarAndShareWidgets extends StatelessWidget {
  const FilterAndCalendarAndShareWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
          SizedBox(
            width: 12,
          ),
          RangeOptionWidget(
            rangeOptionModel: RangeOptionModel(
                icon: Assets.imagesProfile2user, title: 'Share'),
          ),
        ],
      ),
    );
  }
}
