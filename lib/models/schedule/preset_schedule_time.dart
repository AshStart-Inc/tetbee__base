import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';

part 'preset_schedule_time.freezed.dart';
part 'preset_schedule_time.g.dart';

@freezed
class SchedulePresetTime with _$SchedulePresetTime {
  @JsonSerializable(explicitToJson: true)
  const factory SchedulePresetTime({
    required int ordinal,
    required RangedTimeModel timeRange,
  }) = _SchedulePresetTime;

  factory SchedulePresetTime.fromJson(Map<String, dynamic> json) =>
      _$SchedulePresetTimeFromJson(json);
}

extension SchedulePresetTimeExtension on SchedulePresetTime {
  RangedTimeModel getTimeFromBaseDate(DateTime baseDate) {
    // timeRange.startTime!.day == timeRange.endTime!.day ?
    return RangedTimeModel(
      startTime: DateTime(
        baseDate.year,
        baseDate.month,
        baseDate.day,
        timeRange.startTime!.hour,
        timeRange.startTime!.minute,
      ),
      endTime:
          timeRange.endTime == null
              ? null
              : DateTime(
                timeRange.startTime!.year == timeRange.endTime!.year
                    ? baseDate.year
                    : baseDate.year + 1,
                timeRange.startTime!.month == timeRange.endTime!.month
                    ? baseDate.month
                    : baseDate.month + 1,
                timeRange.startTime!.day == timeRange.endTime!.day
                    ? baseDate.day
                    : baseDate.day + 1,
                timeRange.endTime!.hour,
                timeRange.endTime!.minute,
              ),
    );
  }
}
