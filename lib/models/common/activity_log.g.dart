// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityLogImpl _$$ActivityLogImplFromJson(Map<String, dynamic> json) =>
    _$ActivityLogImpl(
      id: json['id'] as String?,
      createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
      createdBy: json['createdBy'] as String? ?? '',
      updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
      updatedBy: json['updatedBy'] as String? ?? '',
      logType: $enumDecode(_$ActivityLogTypeEnumMap, json['logType']),
      description: json['description'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$ActivityLogImplToJson(_$ActivityLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'updatedBy': instance.updatedBy,
      'logType': _$ActivityLogTypeEnumMap[instance.logType]!,
      'description': instance.description,
      'error': instance.error,
    };

const _$ActivityLogTypeEnumMap = {ActivityLogType.loginAttempt: 'loginAttempt'};
