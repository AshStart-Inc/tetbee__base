import 'package:freezed_annotation/freezed_annotation.dart';

part 'preset_schedule_time.freezed.dart';
part 'preset_schedule_time.g.dart';

@freezed
class PresetScheduleTime with _$PresetScheduleTime {
  const factory PresetScheduleTime({
    required int ordinal,
    required String startTime,
    String? endTime,
  }) = _PresetScheduleTime;

  factory PresetScheduleTime.fromJson(Map<String, dynamic> json) =>
      _$PresetScheduleTimeFromJson(json);
}
