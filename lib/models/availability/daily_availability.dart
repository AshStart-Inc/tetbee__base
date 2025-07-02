import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'daily_availability.freezed.dart';
part 'daily_availability.g.dart';

@freezed
class DailyAvailability with _$DailyAvailability {
  @JsonSerializable(explicitToJson: true)
  const factory DailyAvailability({
    required int weekDay,
    String? avReceiverId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? date, //this value will be used for ranged date availaibility type
    String? comment,
    @Default(false) bool? canWorkButNotPreferToWork,
    required RangedTimeModel timeRange,
  }) = _DailyAvailability;

  factory DailyAvailability.fromJson(Map<String, dynamic> json) =>
      _$DailyAvailabilityFromJson(json);
}

extension DailyAvailabilityExtension on DailyAvailability {
  String getAvailableTime(
    RangedTimeModel rTime,
    int minimumHour,
    bool show24Hour, {
    bool showOnlyTimeFormat = false,
  }) {
    return isUnavailable(minimumHour)
        ? (showOnlyTimeFormat ? '' : 'Not available')
        : isAvailableWholeDay(rTime)
        ? (showOnlyTimeFormat ? '' : "Whole Day")
        : '${timeRange.getTimeFormat(show24Hour)} - ${timeRange.getTimeFormat(show24Hour, isStartTime: false)}';
  }

  bool isAvailableWholeDay(RangedTimeModel r) {
    if (isUnavailable(3)) return false;

    final model = r;

    // normalize: remove date, keep time
    DateTime normalize(DateTime dt) => DateTime(0, 1, 1, dt.hour, dt.minute);

    // adjust if end is before start (overnight)
    DateTime adjustEndIfOvernight(DateTime start, DateTime end) {
      if (end.isBefore(start)) {
        return end.add(const Duration(days: 1));
      }
      return end;
    }

    final DateTime modelStart = normalize(model.startTime!);
    final DateTime modelEnd = adjustEndIfOvernight(
      modelStart,
      normalize(model.endTime!),
    );

    final DateTime actualStart = normalize(timeRange.startTime!);
    final DateTime actualEnd = adjustEndIfOvernight(
      actualStart,
      normalize(timeRange.endTime!),
    );

    return actualStart == modelStart && actualEnd == modelEnd;
  }

  bool isUnavailable(int minimumHour) {
    return getTimeDiffTimeOfDay(timeRange).hour <= minimumHour;
  }

  TimeOfDay getTimeDiffTimeOfDay(RangedTimeModel rangedTimeModel) {
    if (rangedTimeModel.startTime != null && rangedTimeModel.endTime != null) {
      final start = rangedTimeModel.startTime!;
      final end = rangedTimeModel.endTime!;

      int hour = end.hour - start.hour;
      int minute = end.minute - start.minute;

      if (rangedTimeModel.startTime?.day != rangedTimeModel.endTime?.day) {
        hour += 24;
      }
      if (minute < 0) {
        hour -= 1;
        minute += 60;
      }
      return TimeOfDay(hour: hour, minute: minute);
    }

    return TimeOfDay(hour: 0, minute: 0);
  }
}
