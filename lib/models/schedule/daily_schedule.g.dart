// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyScheduleImpl _$$DailyScheduleImplFromJson(Map<String, dynamic> json) =>
    _$DailyScheduleImpl(
      id: json['id'] as String?,
      scheduleTimeRange:
          json['scheduleTimeRange'] == null
              ? null
              : RangedTimeModel.fromJson(
                json['scheduleTimeRange'] as Map<String, dynamic>,
              ),
      breakTimeRange:
          json['breakTimeRange'] == null
              ? null
              : RangedTimeModel.fromJson(
                json['breakTimeRange'] as Map<String, dynamic>,
              ),
      signedOutTimeRange:
          json['signedOutTimeRange'] == null
              ? null
              : RangedTimeModel.fromJson(
                json['signedOutTimeRange'] as Map<String, dynamic>,
              ),
      signedOutAt: Helpers.dateFromJson((json['signedOutAt'] as num?)?.toInt()),
      signOutComment: json['signOutComment'] as String? ?? '',
      positionCode: json['positionCode'] as String? ?? '',
      comment: json['comment'] as String? ?? '',
      isHalfDay: json['isHalfDay'] as bool? ?? false,
      trainer:
          (json['trainer'] as List<dynamic>?)
              ?.map((e) => WorkTrainInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      trainee:
          (json['trainee'] as List<dynamic>?)
              ?.map((e) => WorkTrainInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DailyScheduleImplToJson(_$DailyScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduleTimeRange': instance.scheduleTimeRange?.toJson(),
      'breakTimeRange': instance.breakTimeRange?.toJson(),
      'signedOutTimeRange': instance.signedOutTimeRange?.toJson(),
      'signedOutAt': Helpers.dateToJson(instance.signedOutAt),
      'signOutComment': instance.signOutComment,
      'positionCode': instance.positionCode,
      'comment': instance.comment,
      'isHalfDay': instance.isHalfDay,
      'trainer': instance.trainer.map((e) => e.toJson()).toList(),
      'trainee': instance.trainee.map((e) => e.toJson()).toList(),
    };
