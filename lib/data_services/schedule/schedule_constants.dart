import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/models/schedule/daily_schedule.dart';
import 'package:tetbee__base/theme/theme_constants.dart';

class ScheduleConstants {
  static int minimumHours = 3;
  static int baseFullScheduleTime = 8;
  static int baseHalfScheduleTime = 4;
  static Color cellColorWholeDayColor = Colors.white;
  // const Color(0xff46C74B).withOpacity(0.8);
  static Color cellColorNotAvailableColor = Colors.grey.withOpacity(0.5);
  // Colors.pink[600]!.withOpacity(0.8);
  static Color cellColorNotPreferToWork = Colors.white;
  static Color cellColorSameSchedule = ThemeConstants.yellowColor1;
  // Colors.yellow.withOpacity(0.8);
  static Color cellColorWithTimeOffRequest = Colors.grey.withOpacity(0.5);
  static Color cellColorWithTimeOffRequestBorderColor = Colors.grey;
  static Color cellColorWithPendingTimeOffRequest(BuildContext context) =>
      Theme.of(context).cardColor.withOpacity(0.3);

  // Schedule Time range

  // static Map<ScheduleTimeRange, RangedTimeModel> scheduleTimeRange = {
  //   ScheduleTimeRange.Midnight: RangedTimeModel(
  //     startTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       0,
  //     ),
  //     endTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       6,
  //     ),
  //   ),
  //   ScheduleTimeRange.Morning: RangedTimeModel(
  //     startTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       6,
  //     ),
  //     endTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       10,
  //     ),
  //   ),
  //   ScheduleTimeRange.Lunch: RangedTimeModel(
  //     startTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       10,
  //     ),
  //     endTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       15,
  //     ),
  //   ),
  //   ScheduleTimeRange.Dinner: RangedTimeModel(
  //     startTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       15,
  //     ),
  //     endTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       20,
  //     ),
  //   ),
  //   ScheduleTimeRange.Night: RangedTimeModel(
  //     startTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       20,
  //     ),
  //     endTime: DateTime(
  //       _baseYear,
  //       _baseMonth,
  //       _baseDay,
  //       24,
  //     ),
  //   ),
  // };

  static String getDailyScheduleId(DailySchedule dailySchedule) =>
      '${dailySchedule.positionCode}${dailySchedule.scheduleTimeRange!.startTime!.microsecondsSinceEpoch}${dailySchedule.scheduleTimeRange!.endTime != null ? '${dailySchedule.scheduleTimeRange!.endTime!.microsecondsSinceEpoch}' : ''}';

  // static buildScheduleTags(DailySchedule dailySchedule, BuildContext context) {
  //   const double padding = 1;
  //   return Row(
  //     children: [
  //       if (dailySchedule.isTrainer ?? false)
  //         Padding(
  //           padding: const EdgeInsets.all(padding),
  //           child: NotPreferedWidget(
  //             color: ThemeConstants.primaryDarkColor,
  //             textColor:
  //                 Theme.of(context).primaryTextTheme.headlineLarge!.color,
  //             text: 'Trainer',
  //           ),
  //         ),
  //       if (dailySchedule.isTrainee ?? false)
  //         Padding(
  //           padding: const EdgeInsets.all(padding),
  //           child: NotPreferedWidget(
  //             color: ThemeConstants.primaryBlueColor,
  //             text: 'Trainee',
  //             textColor:
  //                 Theme.of(context).primaryTextTheme.headlineLarge!.color,
  //           ),
  //         ),
  //       if (dailySchedule.isHalfDay ?? false)
  //         Padding(
  //           padding: const EdgeInsets.all(padding),
  //           child: NotPreferedWidget(
  //             color: Theme.of(context).colorScheme.onPrimary,
  //             textColor:
  //                 Theme.of(context).primaryTextTheme.headlineLarge!.color,
  //             text: 'Half day',
  //           ),
  //         ),
  //     ],
  //   );
  // }
}
