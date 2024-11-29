import 'package:flutter/material.dart';
import 'package:project_management_dashboard/models/complexity_level_model.dart';

enum ComplexityLevelEnum { low, high, completed }

ComplexityLevelModel getComplexityLevelStatus(ComplexityLevelEnum e) {
  switch (e) {
    case ComplexityLevelEnum.low:
      return const ComplexityLevelModel(
          backgroundColor: Color(0xffF9EEE3),
          textColor: Color(0xffD58D49),
          title: 'Low');
    case ComplexityLevelEnum.high:
      return const ComplexityLevelModel(
          backgroundColor: Color(0xffFCF1F2),
          textColor: Color(0xffD8727D),
          title: 'High');

    case ComplexityLevelEnum.completed:
      return const ComplexityLevelModel(
          backgroundColor: Color(0xffE6F3EB),
          textColor: Color(0xff68B266),
          title: 'Completed');
  }
}
