// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/availability/daily_availability.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'my_preset_availability.freezed.dart';
part 'my_preset_availability.g.dart';

@freezed
class MyPresetAvailability with _$MyPresetAvailability {
  @JsonSerializable(explicitToJson: true)
  const factory MyPresetAvailability({
    String? id,
    @Default(false) bool isSelected,
    @Default(false) bool deleted,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    @Default('') String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @Default('') String title,
    @Default([]) List<DailyAvailability> dailyAvailabilityTimeRange,
  }) = _MyPresetAvailability;

  factory MyPresetAvailability.fromJson(Map<String, dynamic> json) =>
      _$MyPresetAvailabilityFromJson(json);
}
