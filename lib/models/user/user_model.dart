// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tetbee__base/models/common/emergency_contact.dart';
import 'package:tetbee__base/models/common/phone_number_model.dart';
import 'package:tetbee__base/models/user/user_settings.dart';
import 'package:tetbee__base/models/work_place/user_work_place.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    required String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    required String updatedBy,
    @Default(false) bool deleted,
    @Default(false) bool isTempUser,
    required String name,
    String? firstName,
    String? lastName,
    required String nickName,
    @Default(true) bool preferShowNickName,
    PhoneNumberModel? primaryPhoneNumber,
    PhoneNumberModel? secondaryPhoneNumber,
    EmergnecyContact? emergencyContact,
    @Default(Gender.male) Gender gender,
    String? defaultProfilePictureUrl,
    String? currentWorkPlaceId,
    String? email,
    String? dateOfBirth,
    List<UserWorkPlace>? userWorkPlaceRelation,
    required UserSettings userSettings,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
