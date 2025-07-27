// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserScheduleImpl _$$UserScheduleImplFromJson(Map<String, dynamic> json) =>
    _$UserScheduleImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      scheduleContainerId: json['scheduleContainerId'] as String?,
      workPlaceId: json['workPlaceId'] as String?,
      weekday: (json['weekday'] as num?)?.toInt(),
      createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
      createdBy: json['createdBy'] as String? ?? '',
      updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
      updatedBy: json['updatedBy'] as String? ?? '',
      scheduleDate: json['scheduleDate'] as String? ?? '',
      schedules:
          (json['schedules'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, DailySchedule.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$UserScheduleImplToJson(_$UserScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'scheduleContainerId': instance.scheduleContainerId,
      'workPlaceId': instance.workPlaceId,
      'weekday': instance.weekday,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'updatedBy': instance.updatedBy,
      'scheduleDate': instance.scheduleDate,
      'schedules': instance.schedules.map((k, e) => MapEntry(k, e.toJson())),
    };
