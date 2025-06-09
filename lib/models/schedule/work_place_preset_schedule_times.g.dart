// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_place_preset_schedule_times.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkPlaceSchedulePresetTimesImpl _$$WorkPlaceSchedulePresetTimesImplFromJson(
  Map<String, dynamic> json,
) => _$WorkPlaceSchedulePresetTimesImpl(
  id: json['id'] as String?,
  presetTimes:
      (json['presetTimes'] as List<dynamic>?)
          ?.map((e) => SchedulePresetTime.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$WorkPlaceSchedulePresetTimesImplToJson(
  _$WorkPlaceSchedulePresetTimesImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'presetTimes': instance.presetTimes?.map((e) => e.toJson()).toList(),
};
