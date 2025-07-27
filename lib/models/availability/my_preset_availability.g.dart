// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_preset_availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyPresetAvailabilityImpl _$$MyPresetAvailabilityImplFromJson(
  Map<String, dynamic> json,
) => _$MyPresetAvailabilityImpl(
  id: json['id'] as String?,
  isSelected: json['isSelected'] as bool? ?? false,
  deleted: json['deleted'] as bool? ?? false,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  title: json['title'] as String? ?? '',
  dailyAvailabilityTimeRange:
      (json['dailyAvailabilityTimeRange'] as List<dynamic>?)
          ?.map((e) => DailyAvailability.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$MyPresetAvailabilityImplToJson(
  _$MyPresetAvailabilityImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'isSelected': instance.isSelected,
  'deleted': instance.deleted,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'title': instance.title,
  'dailyAvailabilityTimeRange':
      instance.dailyAvailabilityTimeRange.map((e) => e.toJson()).toList(),
};
