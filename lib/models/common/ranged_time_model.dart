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
}
