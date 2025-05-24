// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranged_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RangedTimeModelImpl _$$RangedTimeModelImplFromJson(
  Map<String, dynamic> json,
) => _$RangedTimeModelImpl(
  weekDay: (json['weekDay'] as num?)?.toInt(),
  startTime: Helpers.dateFromJson((json['startTime'] as num?)?.toInt()),
  endTime: Helpers.dateFromJson((json['endTime'] as num?)?.toInt()),
);

Map<String, dynamic> _$$RangedTimeModelImplToJson(
  _$RangedTimeModelImpl instance,
) => <String, dynamic>{
  'weekDay': instance.weekDay,
  'startTime': Helpers.dateToJson(instance.startTime),
  'endTime': Helpers.dateToJson(instance.endTime),
};
