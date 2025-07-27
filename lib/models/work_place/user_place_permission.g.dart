// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_place_permission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPlacePermissionImpl _$$UserPlacePermissionImplFromJson(
  Map<String, dynamic> json,
) => _$UserPlacePermissionImpl(
  managePlaceAccess: json['managePlaceAccess'] as bool? ?? false,
  postingViewAccess: json['postingViewAccess'] as bool? ?? false,
  contactAccess: json['contactAccess'] as bool? ?? false,
  postingAccess: json['postingAccess'] as bool? ?? false,
  scheduleAccess: json['scheduleAccess'] as bool? ?? false,
  scheduleReviewAccess: json['scheduleReviewAccess'] as bool? ?? false,
  userInfoUpdateAccess: json['userInfoUpdateAccess'] as bool? ?? false,
  chatRoomAccess: json['chatRoomAccess'] as bool? ?? false,
  dailyScheduleReviewPermission:
      json['dailyScheduleReviewPermission'] as bool? ?? false,
);

Map<String, dynamic> _$$UserPlacePermissionImplToJson(
  _$UserPlacePermissionImpl instance,
) => <String, dynamic>{
  'managePlaceAccess': instance.managePlaceAccess,
  'postingViewAccess': instance.postingViewAccess,
  'contactAccess': instance.contactAccess,
  'postingAccess': instance.postingAccess,
  'scheduleAccess': instance.scheduleAccess,
  'scheduleReviewAccess': instance.scheduleReviewAccess,
  'userInfoUpdateAccess': instance.userInfoUpdateAccess,
  'chatRoomAccess': instance.chatRoomAccess,
  'dailyScheduleReviewPermission': instance.dailyScheduleReviewPermission,
};
