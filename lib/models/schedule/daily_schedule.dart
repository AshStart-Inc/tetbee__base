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
    @Default('') String positionCode,
    @Default('') String comment,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? signedOutStartTime,
    DateTime? signedOutEndTime,
    @Default(false) bool isHalfDay,
    @Default([]) List<WorkTrainInfo> trainer,
    @Default([]) List<WorkTrainInfo> trainee,
  }) = _DailySchedule;

  factory DailySchedule.fromJson(Map<String, dynamic> json) =>
      _$DailyScheduleFromJson(json);
}

extension DailyScheduleExtension on DailySchedule {
  String getScheduleText(bool show24Hour) {
    RangedTimeModel timeModel =
        (signedOutStartTime != null)
            ? scheduleTimeRange!.copyWith(
              startTime: signedOutStartTime,
              endTime: signedOutEndTime,
            )
            : scheduleTimeRange!;

    return '${timeModel.getTimeFormat(show24Hour)} - ${timeModel.endTime != null ? timeModel.getTimeFormat(show24Hour, isStartTime: false) : ''}';
  }
}
