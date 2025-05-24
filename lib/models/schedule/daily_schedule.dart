import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
import 'package:tetbee__base/models/schedule/work_train_info.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'daily_schedule.freezed.dart';
part 'daily_schedule.g.dart';

@freezed
class DailySchedule with _$DailySchedule {
  @JsonSerializable(explicitToJson: true)
  const factory DailySchedule({
    String? id,
    RangedTimeModel? scheduleTimeRange,
    RangedTimeModel? breakTimeRange,
    @Default('') String comment,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? signedOutTime,
    @Default(false) bool isHalfDay,
    @Default([]) List<WorkTrainInfo> trainer,
    @Default([]) List<WorkTrainInfo> trainee,
  }) = _DailySchedule;

  factory DailySchedule.fromJson(Map<String, dynamic> json) =>
      _$DailyScheduleFromJson(json);
}
