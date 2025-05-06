// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_receiver_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailabilityReceiverSettingImpl _$$AvailabilityReceiverSettingImplFromJson(
  Map<String, dynamic> json,
) => _$AvailabilityReceiverSettingImpl(
  showNotPreferedDayChecker: json['showNotPreferedDayChecker'] as bool,
  useDailyComment: json['useDailyComment'] as bool,
  timeInterval: (json['timeInterval'] as num).toInt(),
);

Map<String, dynamic> _$$AvailabilityReceiverSettingImplToJson(
  _$AvailabilityReceiverSettingImpl instance,
) => <String, dynamic>{
  'showNotPreferedDayChecker': instance.showNotPreferedDayChecker,
  'useDailyComment': instance.useDailyComment,
  'timeInterval': instance.timeInterval,
};
