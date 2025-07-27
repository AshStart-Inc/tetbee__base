// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voting_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VotingOptionImpl _$$VotingOptionImplFromJson(Map<String, dynamic> json) =>
    _$VotingOptionImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      color: Helpers.colorFromInt((json['color'] as num?)?.toInt()),
      votes:
          (json['votes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$$VotingOptionImplToJson(_$VotingOptionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'color': Helpers.colorToInt(instance.color),
      'votes': instance.votes,
    };
