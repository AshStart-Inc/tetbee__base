// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_hour_calculation_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkHourCalculationHistoryImpl _$$WorkHourCalculationHistoryImplFromJson(
  Map<String, dynamic> json,
) => _$WorkHourCalculationHistoryImpl(
  id: json['id'] as String?,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  dateRange: RangedTimeModel.fromJson(
    json['dateRange'] as Map<String, dynamic>,
  ),
  holidays: Helpers.dateListFromStringJson(json['holidays'] as List?),
);

Map<String, dynamic> _$$WorkHourCalculationHistoryImplToJson(
  _$WorkHourCalculationHistoryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'updatedBy': instance.updatedBy,
  'dateRange': instance.dateRange.toJson(),
  'holidays': Helpers.dateListToIsoJson(instance.holidays),
};
