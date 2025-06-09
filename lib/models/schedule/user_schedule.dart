import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/models/schedule/daily_schedule.dart';
import 'package:tetbee__base/utils/helper.dart';
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
