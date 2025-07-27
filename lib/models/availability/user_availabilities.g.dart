// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_availabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AUserAvailabilitiesImpl _$$AUserAvailabilitiesImplFromJson(
  Map<String, dynamic> json,
) => _$AUserAvailabilitiesImpl(
  id: json['id'] as String?,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  dailyAvailabilities:
      (json['dailyAvailabilities'] as List<dynamic>)
          .map((e) => DailyAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
  weekComment: json['weekComment'] as String? ?? '',
  weekDay: (json['weekDay'] as num?)?.toInt(),
  prefferedHours: (json['prefferedHours'] as num?)?.toInt(),
);

Map<String, dynamic> _$$AUserAvailabilitiesImplToJson(
  _$AUserAvailabilitiesImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'updatedBy': instance.updatedBy,
  'dailyAvailabilities':
      instance.dailyAvailabilities.map((e) => e.toJson()).toList(),
  'weekComment': instance.weekComment,
  'weekDay': instance.weekDay,
  'prefferedHours': instance.prefferedHours,
};
