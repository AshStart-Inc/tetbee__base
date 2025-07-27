// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_user_availabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempUserAvailabilitiesImpl _$$TempUserAvailabilitiesImplFromJson(
  Map<String, dynamic> json,
) => _$TempUserAvailabilitiesImpl(
  id: json['id'] as String?,
  dailyAvailabilityTimeRange:
      (json['dailyAvailabilityTimeRange'] as List<dynamic>?)
          ?.map((e) => DailyAvailability.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  availabilityReceiverDefaultSetting:
      json['availabilityReceiverDefaultSetting'] == null
          ? null
          : AvailabilityReceiverSetting.fromJson(
            json['availabilityReceiverDefaultSetting'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$TempUserAvailabilitiesImplToJson(
  _$TempUserAvailabilitiesImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'dailyAvailabilityTimeRange':
      instance.dailyAvailabilityTimeRange.map((e) => e.toJson()).toList(),
  'availabilityReceiverDefaultSetting':
      instance.availabilityReceiverDefaultSetting?.toJson(),
};
