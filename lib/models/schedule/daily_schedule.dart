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
    RangedTimeModel? signedOutTimeRange,
    @Default('') String signOutComment,
    @Default('') String positionCode,
    @Default('') String comment,
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
        (signedOutTimeRange != null)
            ? scheduleTimeRange!.copyWith(
              startTime: signedOutTimeRange!.startTime,
              endTime: signedOutTimeRange!.endTime,
            )
            : scheduleTimeRange!;

    return '${timeModel.getTimeFormat(show24Hour)} - ${timeModel.endTime != null ? timeModel.getTimeFormat(show24Hour, isStartTime: false) : ''}';
  }
}
