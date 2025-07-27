// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_work_place_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserWorkPlaceInfoImpl _$$UserWorkPlaceInfoImplFromJson(
  Map<String, dynamic> json,
) => _$UserWorkPlaceInfoImpl(
  ordinal: (json['ordinal'] as num).toInt(),
  isTempUser: json['isTempUser'] as bool,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  workPlaceNickName: json['workPlaceNickName'] as String,
  workingStatus:
      $enumDecodeNullable(_$WorkingStatusEnumMap, json['workingStatus']) ??
      WorkingStatus.fullTime,
  positions:
      (json['positions'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  userPlacePermission:
      json['userPlacePermission'] == null
          ? null
          : UserPlacePermission.fromJson(
            json['userPlacePermission'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$UserWorkPlaceInfoImplToJson(
  _$UserWorkPlaceInfoImpl instance,
) => <String, dynamic>{
  'ordinal': instance.ordinal,
  'isTempUser': instance.isTempUser,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'updatedBy': instance.updatedBy,
  'workPlaceNickName': instance.workPlaceNickName,
  'workingStatus': _$WorkingStatusEnumMap[instance.workingStatus]!,
  'positions': instance.positions,
  'userPlacePermission': instance.userPlacePermission?.toJson(),
};

const _$WorkingStatusEnumMap = {
  WorkingStatus.fullTime: 'fullTime',
  WorkingStatus.partTime: 'partTime',
};
