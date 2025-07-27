// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_sign_out_confirm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleSignOutConfirmModelImpl _$$ScheduleSignOutConfirmModelImplFromJson(
  Map<String, dynamic> json,
) => _$ScheduleSignOutConfirmModelImpl(
  scheduleUserId: json['scheduleUserId'] as String? ?? '',
  scheduleDate: Helpers.dateFromJsonIso(json['scheduleDate'] as String?),
  confirmHistories:
      (json['confirmHistories'] as List<dynamic>?)
          ?.map(
            (e) => ScheduleConfirmHistory.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ScheduleSignOutConfirmModelImplToJson(
  _$ScheduleSignOutConfirmModelImpl instance,
) => <String, dynamic>{
  'scheduleUserId': instance.scheduleUserId,
  'scheduleDate': Helpers.dateIsoToJson(instance.scheduleDate),
  'confirmHistories': instance.confirmHistories.map((e) => e.toJson()).toList(),
};
