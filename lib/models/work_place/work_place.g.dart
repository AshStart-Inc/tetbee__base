// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkPlaceImpl _$$WorkPlaceImplFromJson(
  Map<String, dynamic> json,
) => _$WorkPlaceImpl(
  id: json['id'] as String?,
  name: json['name'] as String? ?? '',
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  filters:
      (json['filters'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  deleted: json['deleted'] as bool? ?? false,
  placeOwnerId: json['placeOwnerId'] as String? ?? '',
  currentMembershipId: json['currentMembershipId'] as String? ?? '',
  startWeekDay: (json['startWeekDay'] as num?)?.toInt() ?? 1,
  googlePlaceModel:
      json['googlePlaceModel'] == null
          ? const GooglePlaceModel(googlePlaceId: '')
          : GooglePlaceModel.fromJson(
            json['googlePlaceModel'] as Map<String, dynamic>,
          ),
  addressModel:
      json['addressModel'] == null
          ? const AddressModel()
          : AddressModel.fromJson(json['addressModel'] as Map<String, dynamic>),
  email1: json['email1'] as String?,
  email2: json['email2'] as String?,
  website: json['website'] as String?,
  defaultProfilePictureUrl: json['defaultProfilePictureUrl'] as String?,
  isOpened: json['isOpened'] ?? false,
  isVerified: json['isVerified'] ?? false,
  primaryPhoneNumber:
      json['primaryPhoneNumber'] == null
          ? null
          : PhoneNumberModel.fromJson(
            json['primaryPhoneNumber'] as Map<String, dynamic>,
          ),
  secondaryPhoneNumber:
      json['secondaryPhoneNumber'] == null
          ? null
          : PhoneNumberModel.fromJson(
            json['secondaryPhoneNumber'] as Map<String, dynamic>,
          ),
  workPlaceTypeId: json['workPlaceTypeId'] as String? ?? '',
  timeZone:
      json['timeZone'] == null
          ? const TimeZoneModel()
          : TimeZoneModel.fromJson(json['timeZone'] as Map<String, dynamic>),
  positions:
      (json['positions'] as List<dynamic>?)
          ?.map((e) => PositionModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  availabilityReceiverDefaultSetting:
      json['availabilityReceiverDefaultSetting'] == null
          ? const AvailabilityReceiverSetting()
          : AvailabilityReceiverSetting.fromJson(
            json['availabilityReceiverDefaultSetting'] as Map<String, dynamic>,
          ),
  useShiftSignOut: json['useShiftSignOut'] as bool? ?? false,
  roundingInterval: (json['roundingInterval'] as num?)?.toInt() ?? 15,
);

Map<String, dynamic> _$$WorkPlaceImplToJson(_$WorkPlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'updatedBy': instance.updatedBy,
      'filters': instance.filters,
      'deleted': instance.deleted,
      'placeOwnerId': instance.placeOwnerId,
      'currentMembershipId': instance.currentMembershipId,
      'startWeekDay': instance.startWeekDay,
      'googlePlaceModel': instance.googlePlaceModel.toJson(),
      'addressModel': instance.addressModel?.toJson(),
      'email1': instance.email1,
      'email2': instance.email2,
      'website': instance.website,
      'defaultProfilePictureUrl': instance.defaultProfilePictureUrl,
      'isOpened': instance.isOpened,
      'isVerified': instance.isVerified,
      'primaryPhoneNumber': instance.primaryPhoneNumber?.toJson(),
      'secondaryPhoneNumber': instance.secondaryPhoneNumber?.toJson(),
      'workPlaceTypeId': instance.workPlaceTypeId,
      'timeZone': instance.timeZone.toJson(),
      'positions': instance.positions.map((e) => e.toJson()).toList(),
      'availabilityReceiverDefaultSetting':
          instance.availabilityReceiverDefaultSetting.toJson(),
      'useShiftSignOut': instance.useShiftSignOut,
      'roundingInterval': instance.roundingInterval,
    };
