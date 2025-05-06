// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      createdAt: Helpers.dateFromJson((json['createdAt'] as num?)?.toInt()),
      createdBy: json['createdBy'] as String,
      updatedAt: Helpers.dateFromJson((json['updatedAt'] as num?)?.toInt()),
      updatedBy: json['updatedBy'] as String,
      deleted: json['deleted'] as bool? ?? false,
      isTempUser: json['isTempUser'] as bool? ?? false,
      name: json['name'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
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
      gender:
          $enumDecodeNullable(_$GenderEnumMap, json['gender']) ?? Gender.male,
      defaultProfilePictureUrl: json['defaultProfilePictureUrl'] as String?,
      currentWorkPlaceId: json['currentWorkPlaceId'] as String?,
      email: json['email'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      userWorkPlaceRelation:
          (json['userWorkPlaceRelation'] as List<dynamic>?)
              ?.map((e) => UserWorkPlace.fromJson(e as Map<String, dynamic>))
              .toList(),
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
      'deleted': instance.deleted,
      'isTempUser': instance.isTempUser,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'nickName': instance.nickName,
      'preferShowNickName': instance.preferShowNickName,
      'primaryPhoneNumber': instance.primaryPhoneNumber,
      'secondaryPhoneNumber': instance.secondaryPhoneNumber,
      'emergencyContact': instance.emergencyContact,
      'gender': _$GenderEnumMap[instance.gender]!,
      'defaultProfilePictureUrl': instance.defaultProfilePictureUrl,
      'currentWorkPlaceId': instance.currentWorkPlaceId,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth,
      'userWorkPlaceRelation': instance.userWorkPlaceRelation,
      'userSettings': instance.userSettings,
    };

const _$GenderEnumMap = {Gender.male: 'male', Gender.female: 'female'};
