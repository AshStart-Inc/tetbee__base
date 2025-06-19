import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'notification_center.freezed.dart';
part 'notification_center.g.dart';

@freezed
class NotificationCenter with _$NotificationCenter {
  const factory NotificationCenter({
    @Default({}) Map<String, bool> postNotifications,
    @Default({}) Map<String, bool> placeAvailabilityNotifications,
    @Default({}) Map<String, bool> placeScheduleNotifications,
    @Default({}) Map<String, bool> joinRequestNotifications,
    @Default({}) Map<String, bool> userInfoUpdateNotifications,
    @Default({}) Map<String, bool> timeOffNotifications,
    @Default({}) Map<String, bool> tradShiftNotifications,
  }) = _NotificationCenter;

  factory NotificationCenter.fromJson(Map<String, dynamic> json) =>
      _$NotificationCenterFromJson(json);
}
