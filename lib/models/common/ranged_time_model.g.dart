// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranged_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RangedTimeModelImpl _$$RangedTimeModelImplFromJson(
  Map<String, dynamic> json,
) => _$RangedTimeModelImpl(
  startTime: Helpers.dateFromJson((json['startTime'] as num?)?.toInt()),
  endTime: Helpers.dateFromJson((json['endTime'] as num?)?.toInt()),
);

Map<String, dynamic> _$$RangedTimeModelImplToJson(
  _$RangedTimeModelImpl instance,
) => <String, dynamic>{
  'startTime': Helpers.dateToJson(instance.startTime),
  'endTime': Helpers.dateToJson(instance.endTime),
};
