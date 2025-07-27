// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule_sign_out_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyScheduleSignOutReviewImpl _$$DailyScheduleSignOutReviewImplFromJson(
  Map<String, dynamic> json,
) => _$DailyScheduleSignOutReviewImpl(
  id: json['id'] as String?,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  confirmedAt: Helpers.dateFromJson((json['confirmedAt'] as num?)?.toInt()),
  confirmedBy: json['confirmedBy'] as String? ?? '',
  confirms:
      (json['confirms'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          ScheduleSignOutConfirmModel.fromJson(e as Map<String, dynamic>),
        ),
      ) ??
      const {},
);

Map<String, dynamic> _$$DailyScheduleSignOutReviewImplToJson(
  _$DailyScheduleSignOutReviewImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'updatedBy': instance.updatedBy,
  'confirmedAt': Helpers.dateToJson(instance.confirmedAt),
  'confirmedBy': instance.confirmedBy,
  'confirms': instance.confirms.map((k, e) => MapEntry(k, e.toJson())),
};
