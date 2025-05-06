// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_place_preset_schedule_times.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkPlaceScheduleTimesImpl _$$WorkPlaceScheduleTimesImplFromJson(
  Map<String, dynamic> json,
) => _$WorkPlaceScheduleTimesImpl(
  presetTimes:
      (json['presetTimes'] as List<dynamic>?)
          ?.map((e) => PresetScheduleTime.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$WorkPlaceScheduleTimesImplToJson(
  _$WorkPlaceScheduleTimesImpl instance,
) => <String, dynamic>{'presetTimes': instance.presetTimes};
