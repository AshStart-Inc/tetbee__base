// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserModelImpl(
  id: json['id'] as String?,
  createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
  createdBy: json['createdBy'] as String? ?? '',
  updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
  updatedBy: json['updatedBy'] as String? ?? '',
  filters:
      (json['filters'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  deleted: json['deleted'] as bool? ?? false,
  didWatchOnboarding: json['didWatchOnboarding'] as bool? ?? false,
  didRateApp: json['didRateApp'] as bool? ?? false,
  isTempUser: json['isTempUser'] as bool? ?? false,
  firstName: json['firstName'] as String? ?? '',
  middleName: json['middleName'] as String? ?? '',
  lastName: json['lastName'] as String? ?? '',
  nickName: json['nickName'] as String,
  preferShowNickName: json['preferShowNickName'] as bool? ?? true,
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
  emergencyContact:
      json['emergencyContact'] == null
          ? null
          : EmergnecyContact.fromJson(
            json['emergencyContact'] as Map<String, dynamic>,
          ),
  addressModel:
      json['addressModel'] == null
          ? null
          : AddressModel.fromJson(json['addressModel'] as Map<String, dynamic>),
  gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.male,
  defaultProfilePictureUrl: json['defaultProfilePictureUrl'] as String?,
  email: json['email'] as String?,
  dateOfBirth: json['dateOfBirth'] as String?,
  userSettings: UserSettings.fromJson(
    json['userSettings'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': Helpers.dateToJson(instance.createdAt),
      'createdBy': instance.createdBy,
      'updatedAt': Helpers.dateToJson(instance.updatedAt),
      'updatedBy': instance.updatedBy,
      'filters': instance.filters,
      'deleted': instance.deleted,
      'didWatchOnboarding': instance.didWatchOnboarding,
      'didRateApp': instance.didRateApp,
      'isTempUser': instance.isTempUser,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'nickName': instance.nickName,
      'preferShowNickName': instance.preferShowNickName,
      'primaryPhoneNumber': instance.primaryPhoneNumber?.toJson(),
      'secondaryPhoneNumber': instance.secondaryPhoneNumber?.toJson(),
      'emergencyContact': instance.emergencyContact?.toJson(),
      'addressModel': instance.addressModel?.toJson(),
      'gender': _$GenderEnumMap[instance.gender]!,
      'defaultProfilePictureUrl': instance.defaultProfilePictureUrl,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth,
      'userSettings': instance.userSettings.toJson(),
    };

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};
