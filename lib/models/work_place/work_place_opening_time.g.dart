// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_place_opening_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkPlaceOpeningTimeImpl _$$WorkPlaceOpeningTimeImplFromJson(
  Map<String, dynamic> json,
) => _$WorkPlaceOpeningTimeImpl(
  weekDay: (json['weekDay'] as num).toInt(),
  startTime: Helpers.dateFromJson((json['startTime'] as num?)?.toInt()),
  endTime: Helpers.dateFromJson((json['endTime'] as num?)?.toInt()),
);

Map<String, dynamic> _$$WorkPlaceOpeningTimeImplToJson(
  _$WorkPlaceOpeningTimeImpl instance,
) => <String, dynamic>{
  'weekDay': instance.weekDay,
  'startTime': Helpers.dateToJson(instance.startTime),
  'endTime': Helpers.dateToJson(instance.endTime),
};
