// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tetbee_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TetbeeLogImpl _$$TetbeeLogImplFromJson(Map<String, dynamic> json) =>
    _$TetbeeLogImpl(
      id: json['id'] as String?,
      dataPath: json['dataPath'] as String,
      workPlaceId: json['workPlaceId'] as String?,
      userId: json['userId'] as String?,
      dataSnapshot: json['dataSnapshot'] as Map<String, dynamic>?,
      deviceInfo: json['deviceInfo'] as String?,
      message: json['message'] as String?,
      platform: json['platform'] as String?,
      appVersion: json['appVersion'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
      logType: $enumDecode(_$LogTypeEnumMap, json['logType']),
      createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
      createdBy: json['createdBy'] as String? ?? '',
      updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
      updatedBy: json['updatedBy'] as String? ?? '',
    );

Map<String, dynamic> _$$TetbeeLogImplToJson(_$TetbeeLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dataPath': instance.dataPath,
      'workPlaceId': instance.workPlaceId,
      'userId': instance.userId,
      'dataSnapshot': instance.dataSnapshot,
      'deviceInfo': instance.deviceInfo,
      'message': instance.message,
      'platform': instance.platform,
      'appVersion': instance.appVersion,
      'statusCode': instance.statusCode,
      'logType': _$LogTypeEnumMap[instance.logType]!,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'updatedBy': instance.updatedBy,
    };

const _$LogTypeEnumMap = {
  LogType.userCreated: 'userCreated',
  LogType.placeCreated: 'placeCreated',
  LogType.userUpdated: 'userUpdated',
  LogType.userRemoved: 'userRemoved',
  LogType.scheduleCreated: 'scheduleCreated',
};
