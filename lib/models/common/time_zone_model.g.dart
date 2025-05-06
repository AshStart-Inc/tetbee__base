// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeZoneModelImpl _$$TimeZoneModelImplFromJson(Map<String, dynamic> json) =>
    _$TimeZoneModelImpl(
      location: json['location'] as String,
      timeZoneName: json['timeZoneName'] as String,
      offsetMilliseconds: (json['offsetMilliseconds'] as num).toInt(),
      isDst: json['isDst'] as bool,
    );

Map<String, dynamic> _$$TimeZoneModelImplToJson(_$TimeZoneModelImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'timeZoneName': instance.timeZoneName,
      'offsetMilliseconds': instance.offsetMilliseconds,
      'isDst': instance.isDst,
    };
