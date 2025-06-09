// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset_schedule_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchedulePresetTimeImpl _$$SchedulePresetTimeImplFromJson(
  Map<String, dynamic> json,
) => _$SchedulePresetTimeImpl(
  ordinal: (json['ordinal'] as num).toInt(),
  timeRange: RangedTimeModel.fromJson(
    json['timeRange'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$SchedulePresetTimeImplToJson(
  _$SchedulePresetTimeImpl instance,
) => <String, dynamic>{
  'ordinal': instance.ordinal,
  'timeRange': instance.timeRange.toJson(),
};
