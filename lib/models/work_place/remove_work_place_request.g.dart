// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_work_place_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoveWorkPlaceRequestImpl _$$RemoveWorkPlaceRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RemoveWorkPlaceRequestImpl(
  currentUserId: json['currentUserId'] as String,
  workPlaceId: json['workPlaceId'] as String,
  workPlacePositionIds:
      (json['workPlacePositionIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$$RemoveWorkPlaceRequestImplToJson(
  _$RemoveWorkPlaceRequestImpl instance,
) => <String, dynamic>{
  'currentUserId': instance.currentUserId,
  'workPlaceId': instance.workPlaceId,
  'workPlacePositionIds': instance.workPlacePositionIds,
};
