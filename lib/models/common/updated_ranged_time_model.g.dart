// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_ranged_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatedRangedTimeModelImpl _$$UpdatedRangedTimeModelImplFromJson(
  Map<String, dynamic> json,
) => _$UpdatedRangedTimeModelImpl(
  before:
      json['before'] == null
          ? null
          : RangedTimeModel.fromJson(json['before'] as Map<String, dynamic>),
  after:
      json['after'] == null
          ? null
          : RangedTimeModel.fromJson(json['after'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$UpdatedRangedTimeModelImplToJson(
  _$UpdatedRangedTimeModelImpl instance,
) => <String, dynamic>{
  'before': instance.before?.toJson(),
  'after': instance.after?.toJson(),
};
