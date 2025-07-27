import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:tetbee__base/tetbee__base.dart';

part 'ranged_time_model.freezed.dart';
part 'ranged_time_model.g.dart';

@freezed
class RangedTimeModel with _$RangedTimeModel {
  const factory RangedTimeModel({
    int? weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endTime,
  }) = _RangedTimeModel;

  factory RangedTimeModel.fromJson(Map<String, dynamic> json) =>
      _$RangedTimeModelFromJson(json);
}

extension RangedTimeModelExtension on RangedTimeModel {
  RangedTimeModel get convertToLocalRangedTimeModel => RangedTimeModel(
    startTime: DateHelpers.timeToLocalTime(startTime),
    endTime: DateHelpers.timeToLocalTime(endTime),
  );

  String? getTimeRange({bool show24Format = true}) {
    if (endTime == null && startTime == null) {
      return null;
    }
    final format =
        show24Format
            ? DateFormat('HH:mm') // 24시간 형식
            : DateFormat('hh:mm a'); // 12시간 형식 (AM/PM)

    return '${format.format(startTime!)} ~ ${endTime == null ? '' : format.format(endTime!)}';
  }

  String getTimeFormat(
    bool show24Hour, {
    bool isStartTime = true,
    bool toLocal = false,
  }) {
    final DateTime time = isStartTime ? (startTime!) : (endTime!);

    final timeOfDay = TimeOfDay(hour: time.hour, minute: time.minute);

    if (show24Hour) {
      final hh = timeOfDay.hour.toString().padLeft(2, '0');
      final mm = timeOfDay.minute.toString().padLeft(2, '0');
      return '$hh:$mm';
    } else {
      return DateFormat(
        'hh:mm a',
      ).format(DateTime(0, 0, 0, time.hour, time.minute));
    }
  }

  TimeOfDay getTimeDifference() {
    if (startTime == null || endTime == null) {
      return TimeOfDay(hour: 0, minute: 0);
    }
    Duration diff = endTime!.difference(startTime!);

    int hours = diff.inHours;
    int minutes = diff.inMinutes.remainder(60);

    return TimeOfDay(hour: hours, minute: minutes);
  }

  RangedTimeModel toBaseTime(DateTime baseDate) {
    DateTime sTime = startTime!;
    DateTime? eTime = endTime;

    if (eTime != null) {
      if (sTime.day != eTime.day) {
        eTime = DateTime(
          baseDate.year,
          baseDate.month,
          baseDate.day + 1,
          eTime.hour,
          eTime.minute,
        );
      } else {
        eTime = DateTime(
          baseDate.year,
          baseDate.month,
          baseDate.day,
          eTime.hour,
          eTime.minute,
        );
      }
    }
    sTime = DateTime(
      baseDate.year,
      baseDate.month,
      baseDate.day,
      sTime.hour,
      sTime.minute,
    );

    return RangedTimeModel(startTime: sTime, endTime: eTime);
  }
}
