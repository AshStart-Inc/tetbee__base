// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleContainerImpl _$$ScheduleContainerImplFromJson(
  Map<String, dynamic> json,
) => _$ScheduleContainerImpl(
  id: json['id'] as String?,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  startDate: Helpers.dateFromJsonIso(json['startDate'] as String?),
  endDate: Helpers.dateFromJsonIso(json['endDate'] as String?),
  selectedAvailabilityReceiverIds:
      (json['selectedAvailabilityReceiverIds'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ) ??
      const {},
  selectedUserList:
      (json['selectedUserList'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, SelectedUser.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
  isReleased: json['isReleased'] as bool? ?? false,
  deleted: json['deleted'] as bool? ?? false,
);

Map<String, dynamic> _$$ScheduleContainerImplToJson(
  _$ScheduleContainerImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'updatedBy': instance.updatedBy,
  'startDate': Helpers.dateIsoToJson(instance.startDate),
  'endDate': Helpers.dateIsoToJson(instance.endDate),
  'selectedAvailabilityReceiverIds': instance.selectedAvailabilityReceiverIds
      .map((k, e) => MapEntry(k.toString(), e)),
  'selectedUserList': instance.selectedUserList.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'isReleased': instance.isReleased,
  'deleted': instance.deleted,
};
