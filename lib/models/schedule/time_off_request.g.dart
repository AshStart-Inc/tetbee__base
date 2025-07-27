// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_off_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeOffRequestImpl _$$TimeOffRequestImplFromJson(Map<String, dynamic> json) =>
    _$TimeOffRequestImpl(
      id: json['id'] as String?,
      createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
      createdBy: json['createdBy'] as String? ?? '',
      updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
      updatedBy: json['updatedBy'] as String? ?? '',
      deleted: json['deleted'] as bool? ?? false,
      archived: json['archived'] as bool? ?? false,
      scheduleDocIds:
          (json['scheduleDocIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      filters:
          (json['filters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      scheduleContainerFilter:
          (json['scheduleContainerFilter'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      description: json['description'] as String? ?? '',
      rejectReason: json['rejectReason'] as String? ?? '',
      startDate: Helpers.dateFromJsonIso(json['startDate'] as String?),
      endDate: Helpers.dateFromJsonIso(json['endDate'] as String?),
      status:
          $enumDecodeNullable(_$DocumentStatusEnumMap, json['status']) ??
          DocumentStatus.onSubmit,
      notificationPositionTarget:
          (json['notificationPositionTarget'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      requestedUserPositionIds:
          (json['requestedUserPositionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TimeOffRequestImplToJson(
  _$TimeOffRequestImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': Helpers.dateToJson(instance.createdAt),
  'createdBy': instance.createdBy,
  'updatedAt': Helpers.dateToJson(instance.updatedAt),
  'updatedBy': instance.updatedBy,
  'deleted': instance.deleted,
  'archived': instance.archived,
  'scheduleDocIds': instance.scheduleDocIds,
  'filters': instance.filters,
  'scheduleContainerFilter': instance.scheduleContainerFilter,
  'description': instance.description,
  'rejectReason': instance.rejectReason,
  'startDate': Helpers.dateIsoToJson(instance.startDate),
  'endDate': Helpers.dateIsoToJson(instance.endDate),
  'status': _$DocumentStatusEnumMap[instance.status]!,
  'notificationPositionTarget': instance.notificationPositionTarget,
  'requestedUserPositionIds': instance.requestedUserPositionIds,
};

const _$DocumentStatusEnumMap = {
  DocumentStatus.onSubmit: 'onSubmit',
  DocumentStatus.onReview: 'onReview',
  DocumentStatus.onHold: 'onHold',
  DocumentStatus.onRejected: 'onRejected',
  DocumentStatus.onConfirmed: 'onConfirmed',
  DocumentStatus.onCancel: 'onCancel',
  DocumentStatus.onExpired: 'onExpired',
};
