import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/schedule/preset_schedule_time.dart';

part 'work_place_preset_schedule_times.freezed.dart';
part 'work_place_preset_schedule_times.g.dart';

@freezed
class WorkPlaceScheduleTimes with _$WorkPlaceScheduleTimes {
  const factory WorkPlaceScheduleTimes({
    List<PresetScheduleTime>? presetTimes,
  }) = _WorkPlaceScheduleTimes;

  factory WorkPlaceScheduleTimes.fromJson(Map<String, dynamic> json) =>
      _$WorkPlaceScheduleTimesFromJson(json);
}
