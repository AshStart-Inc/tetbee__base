import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/tetbee__base.dart';
import 'package:uuid/uuid.dart';

part 'user_schedule.freezed.dart';
part 'user_schedule.g.dart';

@freezed
class UserSchedule with _$UserSchedule {
  @JsonSerializable(explicitToJson: true)
  const factory UserSchedule({
    String? id,
    String? userId,
    String? scheduleContainerId,
    String? workPlaceId,
    int? weekday,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String updatedBy,
    @Default('') String scheduleDate,
    @Default({}) Map<String, DailySchedule> schedules,
  }) = _UserSchedule;

  factory UserSchedule.fromJson(Map<String, dynamic> json) =>
      _$UserScheduleFromJson(json);
}

extension UserScheduleExtension on UserSchedule {
  bool get isAllScheduleSignedOut =>
      schedules.values.where((dsce) => dsce.signedOutTimeRange == null).isEmpty;
  int getTotalScheduleTimeInMinuteByPosition({
    int scheduleTimeInterval = 15,
    String? positionCode,
  }) {
    int minute = 0;
    for (DailySchedule dsche
        in (positionCode == null
            ? schedules.values
            : schedules.values.where(
              (DailySchedule dsc) => dsc.positionCode == positionCode,
            ))) {
      TimeOfDay result =
          (dsche.breakTimeRange == null)
              ? dsche.signedOutTimeRange!.getTimeDifference()
              : dsche.signedOutTimeRange!
                  .getTimeDifference()
                  .getTimeOfDayDifferenceAsTimeOfDay(
                    dsche.breakTimeRange!.getTimeDifference(),
                  );

      minute +=
          (((result.toMinute + (scheduleTimeInterval ~/ 2)) ~/
                      scheduleTimeInterval) *
                  scheduleTimeInterval)
              .toInt();
    }
    return minute;
  }

  String get userScheduleId => scheduleDate + userId!;

  List<DailySchedule> getSortedSchedules() {
    List<DailySchedule> result = [...schedules.values];
    result.sort(
      (a, b) => a.scheduleTimeRange!.startTime!.compareTo(
        b.scheduleTimeRange!.startTime!,
      ),
    );
    return result;
  }
}

String getUserScheduleIdByDate(DateTime date, String userId) =>
    '${date.toIsoDateString}$userId';
UserSchedule getDefaultSchedule(
  String userId,
  String scheduleContainerId,
  String workPlaceId,
  int weekday,
  DateTime scheduleDate,
  String positionCode,
  RangedTimeModel defaultTimeRange,
) {
  String id = Uuid().v4();
  return UserSchedule(
    userId: userId,
    scheduleContainerId: scheduleContainerId,
    scheduleDate: scheduleDate.toIsoDateString,
    weekday: weekday,
    workPlaceId: workPlaceId,
    schedules: {
      id: DailySchedule(
        id: id,
        scheduleTimeRange: defaultTimeRange,
        positionCode: positionCode,
        isHalfDay: false,
      ),
    },
  );
}
