import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/schedule/preset_schedule_time.dart';

part 'work_place_preset_schedule_times.freezed.dart';
part 'work_place_preset_schedule_times.g.dart';

@freezed
class WorkPlaceSchedulePresetTimes with _$WorkPlaceSchedulePresetTimes {
  @JsonSerializable(explicitToJson: true)
  const factory WorkPlaceSchedulePresetTimes({
    String? id,
    List<SchedulePresetTime>? presetTimes,
  }) = _WorkPlaceSchedulePresetTimes;

  factory WorkPlaceSchedulePresetTimes.fromJson(Map<String, dynamic> json) =>
      _$WorkPlaceSchedulePresetTimesFromJson(json);
}
