// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionModelImpl _$$PositionModelImplFromJson(Map<String, dynamic> json) =>
    _$PositionModelImpl(
      id: json['id'] as String,
      isOwner: json['isOwner'] as bool,
      name: json['name'] as String,
      ordinal: (json['ordinal'] as num).toInt(),
      managePlaceAccess: json['managePlaceAccess'] as bool? ?? false,
      positionViewAccess: json['positionViewAccess'] as bool? ?? false,
      contactAccess: json['contactAccess'] as bool? ?? false,
      postingAccess: json['postingAccess'] as bool? ?? false,
      scheduleAccess: json['scheduleAccess'] as bool? ?? false,
      scheduleReviewAccess: json['scheduleReviewAccess'] as bool? ?? false,
      userInfoUpdateAccess: json['userInfoUpdateAccess'] as bool? ?? false,
    );

Map<String, dynamic> _$$PositionModelImplToJson(_$PositionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isOwner': instance.isOwner,
      'name': instance.name,
      'ordinal': instance.ordinal,
      'managePlaceAccess': instance.managePlaceAccess,
      'positionViewAccess': instance.positionViewAccess,
      'contactAccess': instance.contactAccess,
      'postingAccess': instance.postingAccess,
      'scheduleAccess': instance.scheduleAccess,
      'scheduleReviewAccess': instance.scheduleReviewAccess,
      'userInfoUpdateAccess': instance.userInfoUpdateAccess,
    };
