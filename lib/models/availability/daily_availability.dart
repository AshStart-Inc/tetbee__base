import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';

part 'daily_availability.freezed.dart';
part 'daily_availability.g.dart';

@freezed
class DailyAvailability with _$DailyAvailability {
  @JsonSerializable(explicitToJson: true)
  const factory DailyAvailability({
    required int weekDay,
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
    return isAvailableWholeDay(rTime)
        ? (showOnlyTimeFormat ? '' : "Whole Day")
        : (isUnavailable(minimumHour)
            ? (showOnlyTimeFormat ? '' : 'Not available')
            : '${timeRange.getTimeFormat(show24Hour)} - ${timeRange.getTimeFormat(show24Hour, isStartTime: false)}');
  }

  bool isAvailableWholeDay(RangedTimeModel r) {
    RangedTimeModel rModel = r;
    DateTime actaulStart = timeRange.startTime!;
    DateTime actaulEnd = timeRange.endTime!;
    bool isDiffernentDate1 = timeRange.startTime?.day != timeRange.endTime?.day;
    bool isDiffernentDate2 = rModel.startTime?.day != rModel.endTime?.day;

    if (timeRange.startTime!.hour < rModel.startTime!.hour ||
        timeRange.startTime!.hour >
            (isDiffernentDate2
                ? rModel.endTime!.hour + 24
                : rModel.endTime!.hour)) {
      actaulStart = rModel.startTime!;
    }

    if ((isDiffernentDate1
                ? (timeRange.endTime!.hour + 24)
                : timeRange.endTime!.hour) >
            (isDiffernentDate2
                ? (rModel.endTime!.hour + 24)
                : rModel.endTime!.hour) ||
        (isDiffernentDate1
                ? (timeRange.endTime!.hour + 24)
                : timeRange.endTime!.hour) <
            rModel.startTime!.hour) {
      actaulEnd = rModel.endTime!;
    }

    return ((actaulStart.hour == rModel.startTime?.hour &&
            actaulStart.minute == rModel.startTime?.minute) &&
        (actaulEnd.hour == rModel.endTime?.hour &&
            actaulEnd.minute == rModel.endTime?.minute));
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

      // 날짜가 넘어간 경우 (익일)
      if (rangedTimeModel.startTime?.day != rangedTimeModel.endTime?.day) {
        hour += 24;
      }
      // 분 차이가 음수면 시간에서 1 빼고 분 보정
      if (minute < 0) {
        hour -= 1;
        minute += 60;
      }

      return TimeOfDay(hour: hour, minute: minute);
    }

    return TimeOfDay(hour: 0, minute: 0);
  }
}
