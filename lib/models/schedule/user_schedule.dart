import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/schedule/daily_schedule.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_schedule.freezed.dart';
part 'user_schedule.g.dart';

@freezed
class UserSchedule with _$UserSchedule {
  @JsonSerializable(explicitToJson: true)
  const factory UserSchedule({
    String? id,
    String? userId,
    String? scheduleContainerId,
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
