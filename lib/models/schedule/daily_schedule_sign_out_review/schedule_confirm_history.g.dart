// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_confirm_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleConfirmHistoryImpl _$$ScheduleConfirmHistoryImplFromJson(
  Map<String, dynamic> json,
) => _$ScheduleConfirmHistoryImpl(
  dailyScheduleId: json['dailyScheduleId'] as String?,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  comment: json['comment'] as String?,
  updatedReason: json['updatedReason'] as String?,
  signOutTimeUpdateTimeLog:
      json['signOutTimeUpdateTimeLog'] == null
          ? null
          : UpdatedRangedTimeModel.fromJson(
            json['signOutTimeUpdateTimeLog'] as Map<String, dynamic>,
          ),
  breakTimeUpdateTimeLog:
      json['breakTimeUpdateTimeLog'] == null
          ? null
          : UpdatedRangedTimeModel.fromJson(
            json['breakTimeUpdateTimeLog'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$ScheduleConfirmHistoryImplToJson(
  _$ScheduleConfirmHistoryImpl instance,
) => <String, dynamic>{
  'dailyScheduleId': instance.dailyScheduleId,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'comment': instance.comment,
  'updatedReason': instance.updatedReason,
  'signOutTimeUpdateTimeLog': instance.signOutTimeUpdateTimeLog?.toJson(),
  'breakTimeUpdateTimeLog': instance.breakTimeUpdateTimeLog?.toJson(),
};
