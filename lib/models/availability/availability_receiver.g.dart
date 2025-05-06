// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_receiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AavailabilityReceiverImpl _$$AavailabilityReceiverImplFromJson(
  Map<String, dynamic> json,
) => _$AavailabilityReceiverImpl(
  id: json['id'] as String,
  workPlaceId: json['workPlaceId'] as String,
  workPlaceNickName: json['workPlaceNickName'] as String,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String,
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String,
  userList:
      (json['userList'] as List<dynamic>).map((e) => e as String).toList(),
  isOpened: json['isOpened'] as bool,
  startDate: json['startDate'] as String,
);

Map<String, dynamic> _$$AavailabilityReceiverImplToJson(
  _$AavailabilityReceiverImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'workPlaceId': instance.workPlaceId,
  'workPlaceNickName': instance.workPlaceNickName,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'updatedBy': instance.updatedBy,
  'userList': instance.userList,
  'isOpened': instance.isOpened,
  'startDate': instance.startDate,
};
