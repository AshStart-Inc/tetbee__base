// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/availability/daily_availability.dart';
import 'package:tetbee__base/utils/enums.dart';

part 'availability_receiver_setting.freezed.dart';
part 'availability_receiver_setting.g.dart';

@freezed
class AvailabilityReceiverSetting with _$AvailabilityReceiverSetting {
  @JsonSerializable(explicitToJson: true)
  const factory AvailabilityReceiverSetting({
    @Default(DateRangeType.rangedDate) DateRangeType type,
    @Default(true) bool showNotPreferedDayChecker,
    @Default(true) bool useDailyComment,
    @Default(15) int timeInterval,
    @Default([]) List<DailyAvailability> dailyAvailabilityTimeRange,
  }) = _AvailabilityReceiverSetting;

  factory AvailabilityReceiverSetting.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityReceiverSettingFromJson(json);
}
