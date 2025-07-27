// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_work_place_relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserWorkPlaceRelationImpl _$$UserWorkPlaceRelationImplFromJson(
  Map<String, dynamic> json,
) => _$UserWorkPlaceRelationImpl(
  id: json['id'] as String?,
  workPlaceId: json['workPlaceId'] as String,
  isActive: json['isActive'] as bool? ?? false,
  isSelected: json['isSelected'] as bool? ?? false,
  removedReason: json['removedReason'] as String?,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  joinedAt: Helpers.dateFromJson((json['joinedAt'] as num?)?.toInt()),
  leftAt: Helpers.dateFromJson((json['leftAt'] as num?)?.toInt()),
);

Map<String, dynamic> _$$UserWorkPlaceRelationImplToJson(
  _$UserWorkPlaceRelationImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'workPlaceId': instance.workPlaceId,
  'isActive': instance.isActive,
  'isSelected': instance.isSelected,
  'removedReason': instance.removedReason,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'updatedBy': instance.updatedBy,
  'joinedAt': Helpers.dateToJson(instance.joinedAt),
  'leftAt': Helpers.dateToJson(instance.leftAt),
};
