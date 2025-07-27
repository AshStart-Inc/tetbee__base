// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_reminder_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AAvailabilityReminderRequestImpl _$$AAvailabilityReminderRequestImplFromJson(
  Map<String, dynamic> json,
) => _$AAvailabilityReminderRequestImpl(
  selectedUserList:
      (json['selectedUserList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  sentUserId: json['sentUserId'] as String,
  placeId: json['placeId'] as String,
  availabilityReceiverId: json['availabilityReceiverId'] as String,
);

Map<String, dynamic> _$$AAvailabilityReminderRequestImplToJson(
  _$AAvailabilityReminderRequestImpl instance,
) => <String, dynamic>{
  'selectedUserList': instance.selectedUserList,
  'sentUserId': instance.sentUserId,
  'placeId': instance.placeId,
  'availabilityReceiverId': instance.availabilityReceiverId,
};
