// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyAvailabilityImpl _$$DailyAvailabilityImplFromJson(
  Map<String, dynamic> json,
) => _$DailyAvailabilityImpl(
  weekDay: (json['weekDay'] as num).toInt(),
  avReceiverId: json['avReceiverId'] as String?,
  date: Helpers.dateFromJsonIso(json['date'] as String?),
  comment: json['comment'] as String?,
  canWorkButNotPreferToWork:
      json['canWorkButNotPreferToWork'] as bool? ?? false,
  timeRange: RangedTimeModel.fromJson(
    json['timeRange'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$DailyAvailabilityImplToJson(
  _$DailyAvailabilityImpl instance,
) => <String, dynamic>{
  'weekDay': instance.weekDay,
  'avReceiverId': instance.avReceiverId,
  'date': Helpers.dateIsoToJson(instance.date),
  'comment': instance.comment,
  'canWorkButNotPreferToWork': instance.canWorkButNotPreferToWork,
  'timeRange': instance.timeRange.toJson(),
};
