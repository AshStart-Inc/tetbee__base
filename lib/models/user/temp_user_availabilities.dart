// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/availability/daily_availability.dart';

part 'temp_user_availabilities.freezed.dart';
part 'temp_user_availabilities.g.dart';

@freezed
class TempUserAvailabilities with _$TempUserAvailabilities {
  @JsonSerializable(explicitToJson: true)
  const factory TempUserAvailabilities({
    String? id,
    @Default([]) List<DailyAvailability> dailyAvailabilityTimeRange,
  }) = _TempUserAvailabilities;

  factory TempUserAvailabilities.fromJson(Map<String, dynamic> json) =>
      _$TempUserAvailabilitiesFromJson(json);
}
