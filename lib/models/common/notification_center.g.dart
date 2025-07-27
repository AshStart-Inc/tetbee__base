// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationCenterImpl _$$NotificationCenterImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationCenterImpl(
  postNotifications:
      (json['postNotifications'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ) ??
      const {},
  placeAvailabilityNotifications:
      (json['placeAvailabilityNotifications'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ) ??
      const {},
  placeScheduleNotifications:
      (json['placeScheduleNotifications'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ) ??
      const {},
  joinRequestNotifications:
      (json['joinRequestNotifications'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ) ??
      const {},
  userInfoUpdateNotifications:
      (json['userInfoUpdateNotifications'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ) ??
      const {},
  timeOffNotifications:
      (json['timeOffNotifications'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ) ??
      const {},
  tradShiftNotifications:
      (json['tradShiftNotifications'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ) ??
      const {},
);

Map<String, dynamic> _$$NotificationCenterImplToJson(
  _$NotificationCenterImpl instance,
) => <String, dynamic>{
  'postNotifications': instance.postNotifications,
  'placeAvailabilityNotifications': instance.placeAvailabilityNotifications,
  'placeScheduleNotifications': instance.placeScheduleNotifications,
  'joinRequestNotifications': instance.joinRequestNotifications,
  'userInfoUpdateNotifications': instance.userInfoUpdateNotifications,
  'timeOffNotifications': instance.timeOffNotifications,
  'tradShiftNotifications': instance.tradShiftNotifications,
};
