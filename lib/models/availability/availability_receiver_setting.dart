// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_receiver_setting.freezed.dart';
part 'availability_receiver_setting.g.dart';

@freezed
class AvailabilityReceiverSetting with _$AvailabilityReceiverSetting {
  const factory AvailabilityReceiverSetting({
    required bool showNotPreferedDayChecker,
    required bool useDailyComment,
    required int timeInterval,
  }) = _AvailabilityReceiverSetting;

  factory AvailabilityReceiverSetting.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityReceiverSettingFromJson(json);
}
