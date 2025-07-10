// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get updatedBy => throw _privateConstructorUsedError;
  List<String> get filters => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  bool get didWatchOnboarding => throw _privateConstructorUsedError;
  bool get didRateApp => throw _privateConstructorUsedError;
  bool get isTempUser => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get middleName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  bool get preferShowNickName => throw _privateConstructorUsedError;
  PhoneNumberModel? get primaryPhoneNumber =>
      throw _privateConstructorUsedError;
  PhoneNumberModel? get secondaryPhoneNumber =>
      throw _privateConstructorUsedError;
  EmergnecyContact? get emergencyContact => throw _privateConstructorUsedError;
  AddressModel? get addressModel => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String? get defaultProfilePictureUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Map<String, UserWorkPlaceRelation> get userWorkPlaceRelation =>
      throw _privateConstructorUsedError;
  UserSettings get userSettings => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  UserWorkPlaceInfo? get userWorkPlaceInfo =>
      throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String? updatedBy,
    List<String> filters,
    bool deleted,
    bool didWatchOnboarding,
    bool didRateApp,
    bool isTempUser,
    String firstName,
    String middleName,
    String lastName,
    String nickName,
    bool preferShowNickName,
    PhoneNumberModel? primaryPhoneNumber,
    PhoneNumberModel? secondaryPhoneNumber,
    EmergnecyContact? emergencyContact,
    AddressModel? addressModel,
    Gender gender,
    String? defaultProfilePictureUrl,
    String? email,
    String? dateOfBirth,
    @JsonKey(ignore: true)
    Map<String, UserWorkPlaceRelation> userWorkPlaceRelation,
    UserSettings userSettings,
    @JsonKey(ignore: true) UserWorkPlaceInfo? userWorkPlaceInfo,
  });

  $PhoneNumberModelCopyWith<$Res>? get primaryPhoneNumber;
  $PhoneNumberModelCopyWith<$Res>? get secondaryPhoneNumber;
  $EmergnecyContactCopyWith<$Res>? get emergencyContact;
  $AddressModelCopyWith<$Res>? get addressModel;
  $UserSettingsCopyWith<$Res> get userSettings;
  $UserWorkPlaceInfoCopyWith<$Res>? get userWorkPlaceInfo;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? filters = null,
    Object? deleted = null,
    Object? didWatchOnboarding = null,
    Object? didRateApp = null,
    Object? isTempUser = null,
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? nickName = null,
    Object? preferShowNickName = null,
    Object? primaryPhoneNumber = freezed,
    Object? secondaryPhoneNumber = freezed,
    Object? emergencyContact = freezed,
    Object? addressModel = freezed,
    Object? gender = null,
    Object? defaultProfilePictureUrl = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? userWorkPlaceRelation = null,
    Object? userSettings = null,
    Object? userWorkPlaceInfo = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            createdBy:
                null == createdBy
                    ? _value.createdBy
                    : createdBy // ignore: cast_nullable_to_non_nullable
                        as String,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedBy:
                freezed == updatedBy
                    ? _value.updatedBy
                    : updatedBy // ignore: cast_nullable_to_non_nullable
                        as String?,
            filters:
                null == filters
                    ? _value.filters
                    : filters // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            didWatchOnboarding:
                null == didWatchOnboarding
                    ? _value.didWatchOnboarding
                    : didWatchOnboarding // ignore: cast_nullable_to_non_nullable
                        as bool,
            didRateApp:
                null == didRateApp
                    ? _value.didRateApp
                    : didRateApp // ignore: cast_nullable_to_non_nullable
                        as bool,
            isTempUser:
                null == isTempUser
                    ? _value.isTempUser
                    : isTempUser // ignore: cast_nullable_to_non_nullable
                        as bool,
            firstName:
                null == firstName
                    ? _value.firstName
                    : firstName // ignore: cast_nullable_to_non_nullable
                        as String,
            middleName:
                null == middleName
                    ? _value.middleName
                    : middleName // ignore: cast_nullable_to_non_nullable
                        as String,
            lastName:
                null == lastName
                    ? _value.lastName
                    : lastName // ignore: cast_nullable_to_non_nullable
                        as String,
            nickName:
                null == nickName
                    ? _value.nickName
                    : nickName // ignore: cast_nullable_to_non_nullable
                        as String,
            preferShowNickName:
                null == preferShowNickName
                    ? _value.preferShowNickName
                    : preferShowNickName // ignore: cast_nullable_to_non_nullable
                        as bool,
            primaryPhoneNumber:
                freezed == primaryPhoneNumber
                    ? _value.primaryPhoneNumber
                    : primaryPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as PhoneNumberModel?,
            secondaryPhoneNumber:
                freezed == secondaryPhoneNumber
                    ? _value.secondaryPhoneNumber
                    : secondaryPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as PhoneNumberModel?,
            emergencyContact:
                freezed == emergencyContact
                    ? _value.emergencyContact
                    : emergencyContact // ignore: cast_nullable_to_non_nullable
                        as EmergnecyContact?,
            addressModel:
                freezed == addressModel
                    ? _value.addressModel
                    : addressModel // ignore: cast_nullable_to_non_nullable
                        as AddressModel?,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as Gender,
            defaultProfilePictureUrl:
                freezed == defaultProfilePictureUrl
                    ? _value.defaultProfilePictureUrl
                    : defaultProfilePictureUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            dateOfBirth:
                freezed == dateOfBirth
                    ? _value.dateOfBirth
                    : dateOfBirth // ignore: cast_nullable_to_non_nullable
                        as String?,
            userWorkPlaceRelation:
                null == userWorkPlaceRelation
                    ? _value.userWorkPlaceRelation
                    : userWorkPlaceRelation // ignore: cast_nullable_to_non_nullable
                        as Map<String, UserWorkPlaceRelation>,
            userSettings:
                null == userSettings
                    ? _value.userSettings
                    : userSettings // ignore: cast_nullable_to_non_nullable
                        as UserSettings,
            userWorkPlaceInfo:
                freezed == userWorkPlaceInfo
                    ? _value.userWorkPlaceInfo
                    : userWorkPlaceInfo // ignore: cast_nullable_to_non_nullable
                        as UserWorkPlaceInfo?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhoneNumberModelCopyWith<$Res>? get primaryPhoneNumber {
    if (_value.primaryPhoneNumber == null) {
      return null;
    }

    return $PhoneNumberModelCopyWith<$Res>(_value.primaryPhoneNumber!, (value) {
      return _then(_value.copyWith(primaryPhoneNumber: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhoneNumberModelCopyWith<$Res>? get secondaryPhoneNumber {
    if (_value.secondaryPhoneNumber == null) {
      return null;
    }

    return $PhoneNumberModelCopyWith<$Res>(_value.secondaryPhoneNumber!, (
      value,
    ) {
      return _then(_value.copyWith(secondaryPhoneNumber: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmergnecyContactCopyWith<$Res>? get emergencyContact {
    if (_value.emergencyContact == null) {
      return null;
    }

    return $EmergnecyContactCopyWith<$Res>(_value.emergencyContact!, (value) {
      return _then(_value.copyWith(emergencyContact: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get addressModel {
    if (_value.addressModel == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.addressModel!, (value) {
      return _then(_value.copyWith(addressModel: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserSettingsCopyWith<$Res> get userSettings {
    return $UserSettingsCopyWith<$Res>(_value.userSettings, (value) {
      return _then(_value.copyWith(userSettings: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWorkPlaceInfoCopyWith<$Res>? get userWorkPlaceInfo {
    if (_value.userWorkPlaceInfo == null) {
      return null;
    }

    return $UserWorkPlaceInfoCopyWith<$Res>(_value.userWorkPlaceInfo!, (value) {
      return _then(_value.copyWith(userWorkPlaceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String? updatedBy,
    List<String> filters,
    bool deleted,
    bool didWatchOnboarding,
    bool didRateApp,
    bool isTempUser,
    String firstName,
    String middleName,
    String lastName,
    String nickName,
    bool preferShowNickName,
    PhoneNumberModel? primaryPhoneNumber,
    PhoneNumberModel? secondaryPhoneNumber,
    EmergnecyContact? emergencyContact,
    AddressModel? addressModel,
    Gender gender,
    String? defaultProfilePictureUrl,
    String? email,
    String? dateOfBirth,
    @JsonKey(ignore: true)
    Map<String, UserWorkPlaceRelation> userWorkPlaceRelation,
    UserSettings userSettings,
    @JsonKey(ignore: true) UserWorkPlaceInfo? userWorkPlaceInfo,
  });

  @override
  $PhoneNumberModelCopyWith<$Res>? get primaryPhoneNumber;
  @override
  $PhoneNumberModelCopyWith<$Res>? get secondaryPhoneNumber;
  @override
  $EmergnecyContactCopyWith<$Res>? get emergencyContact;
  @override
  $AddressModelCopyWith<$Res>? get addressModel;
  @override
  $UserSettingsCopyWith<$Res> get userSettings;
  @override
  $UserWorkPlaceInfoCopyWith<$Res>? get userWorkPlaceInfo;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? filters = null,
    Object? deleted = null,
    Object? didWatchOnboarding = null,
    Object? didRateApp = null,
    Object? isTempUser = null,
    Object? firstName = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? nickName = null,
    Object? preferShowNickName = null,
    Object? primaryPhoneNumber = freezed,
    Object? secondaryPhoneNumber = freezed,
    Object? emergencyContact = freezed,
    Object? addressModel = freezed,
    Object? gender = null,
    Object? defaultProfilePictureUrl = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? userWorkPlaceRelation = null,
    Object? userSettings = null,
    Object? userWorkPlaceInfo = freezed,
  }) {
    return _then(
      _$UserModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        createdBy:
            null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                    as String,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedBy:
            freezed == updatedBy
                ? _value.updatedBy
                : updatedBy // ignore: cast_nullable_to_non_nullable
                    as String?,
        filters:
            null == filters
                ? _value._filters
                : filters // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        didWatchOnboarding:
            null == didWatchOnboarding
                ? _value.didWatchOnboarding
                : didWatchOnboarding // ignore: cast_nullable_to_non_nullable
                    as bool,
        didRateApp:
            null == didRateApp
                ? _value.didRateApp
                : didRateApp // ignore: cast_nullable_to_non_nullable
                    as bool,
        isTempUser:
            null == isTempUser
                ? _value.isTempUser
                : isTempUser // ignore: cast_nullable_to_non_nullable
                    as bool,
        firstName:
            null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                    as String,
        middleName:
            null == middleName
                ? _value.middleName
                : middleName // ignore: cast_nullable_to_non_nullable
                    as String,
        lastName:
            null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                    as String,
        nickName:
            null == nickName
                ? _value.nickName
                : nickName // ignore: cast_nullable_to_non_nullable
                    as String,
        preferShowNickName:
            null == preferShowNickName
                ? _value.preferShowNickName
                : preferShowNickName // ignore: cast_nullable_to_non_nullable
                    as bool,
        primaryPhoneNumber:
            freezed == primaryPhoneNumber
                ? _value.primaryPhoneNumber
                : primaryPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as PhoneNumberModel?,
        secondaryPhoneNumber:
            freezed == secondaryPhoneNumber
                ? _value.secondaryPhoneNumber
                : secondaryPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as PhoneNumberModel?,
        emergencyContact:
            freezed == emergencyContact
                ? _value.emergencyContact
                : emergencyContact // ignore: cast_nullable_to_non_nullable
                    as EmergnecyContact?,
        addressModel:
            freezed == addressModel
                ? _value.addressModel
                : addressModel // ignore: cast_nullable_to_non_nullable
                    as AddressModel?,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as Gender,
        defaultProfilePictureUrl:
            freezed == defaultProfilePictureUrl
                ? _value.defaultProfilePictureUrl
                : defaultProfilePictureUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        dateOfBirth:
            freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                    as String?,
        userWorkPlaceRelation:
            null == userWorkPlaceRelation
                ? _value._userWorkPlaceRelation
                : userWorkPlaceRelation // ignore: cast_nullable_to_non_nullable
                    as Map<String, UserWorkPlaceRelation>,
        userSettings:
            null == userSettings
                ? _value.userSettings
                : userSettings // ignore: cast_nullable_to_non_nullable
                    as UserSettings,
        userWorkPlaceInfo:
            freezed == userWorkPlaceInfo
                ? _value.userWorkPlaceInfo
                : userWorkPlaceInfo // ignore: cast_nullable_to_non_nullable
                    as UserWorkPlaceInfo?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    final List<String> filters = const [],
    this.deleted = false,
    this.didWatchOnboarding = false,
    this.didRateApp = false,
    this.isTempUser = false,
    this.firstName = '',
    this.middleName = '',
    this.lastName = '',
    required this.nickName,
    this.preferShowNickName = true,
    this.primaryPhoneNumber,
    this.secondaryPhoneNumber,
    this.emergencyContact,
    this.addressModel,
    this.gender = Gender.male,
    this.defaultProfilePictureUrl,
    this.email,
    this.dateOfBirth,
    @JsonKey(ignore: true)
    final Map<String, UserWorkPlaceRelation> userWorkPlaceRelation = const {},
    required this.userSettings,
    @JsonKey(ignore: true) this.userWorkPlaceInfo,
  }) : _filters = filters,
       _userWorkPlaceRelation = userWorkPlaceRelation;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? createdAt;
  @override
  @JsonKey()
  final String createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final String? updatedBy;
  final List<String> _filters;
  @override
  @JsonKey()
  List<String> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  @JsonKey()
  final bool deleted;
  @override
  @JsonKey()
  final bool didWatchOnboarding;
  @override
  @JsonKey()
  final bool didRateApp;
  @override
  @JsonKey()
  final bool isTempUser;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String middleName;
  @override
  @JsonKey()
  final String lastName;
  @override
  final String nickName;
  @override
  @JsonKey()
  final bool preferShowNickName;
  @override
  final PhoneNumberModel? primaryPhoneNumber;
  @override
  final PhoneNumberModel? secondaryPhoneNumber;
  @override
  final EmergnecyContact? emergencyContact;
  @override
  final AddressModel? addressModel;
  @override
  @JsonKey()
  final Gender gender;
  @override
  final String? defaultProfilePictureUrl;
  @override
  final String? email;
  @override
  final String? dateOfBirth;
  final Map<String, UserWorkPlaceRelation> _userWorkPlaceRelation;
  @override
  @JsonKey(ignore: true)
  Map<String, UserWorkPlaceRelation> get userWorkPlaceRelation {
    if (_userWorkPlaceRelation is EqualUnmodifiableMapView)
      return _userWorkPlaceRelation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userWorkPlaceRelation);
  }

  @override
  final UserSettings userSettings;
  @override
  @JsonKey(ignore: true)
  final UserWorkPlaceInfo? userWorkPlaceInfo;

  @override
  String toString() {
    return 'UserModel(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, filters: $filters, deleted: $deleted, didWatchOnboarding: $didWatchOnboarding, didRateApp: $didRateApp, isTempUser: $isTempUser, firstName: $firstName, middleName: $middleName, lastName: $lastName, nickName: $nickName, preferShowNickName: $preferShowNickName, primaryPhoneNumber: $primaryPhoneNumber, secondaryPhoneNumber: $secondaryPhoneNumber, emergencyContact: $emergencyContact, addressModel: $addressModel, gender: $gender, defaultProfilePictureUrl: $defaultProfilePictureUrl, email: $email, dateOfBirth: $dateOfBirth, userWorkPlaceRelation: $userWorkPlaceRelation, userSettings: $userSettings, userWorkPlaceInfo: $userWorkPlaceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.didWatchOnboarding, didWatchOnboarding) ||
                other.didWatchOnboarding == didWatchOnboarding) &&
            (identical(other.didRateApp, didRateApp) ||
                other.didRateApp == didRateApp) &&
            (identical(other.isTempUser, isTempUser) ||
                other.isTempUser == isTempUser) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.preferShowNickName, preferShowNickName) ||
                other.preferShowNickName == preferShowNickName) &&
            (identical(other.primaryPhoneNumber, primaryPhoneNumber) ||
                other.primaryPhoneNumber == primaryPhoneNumber) &&
            (identical(other.secondaryPhoneNumber, secondaryPhoneNumber) ||
                other.secondaryPhoneNumber == secondaryPhoneNumber) &&
            (identical(other.emergencyContact, emergencyContact) ||
                other.emergencyContact == emergencyContact) &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(
                  other.defaultProfilePictureUrl,
                  defaultProfilePictureUrl,
                ) ||
                other.defaultProfilePictureUrl == defaultProfilePictureUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(
              other._userWorkPlaceRelation,
              _userWorkPlaceRelation,
            ) &&
            (identical(other.userSettings, userSettings) ||
                other.userSettings == userSettings) &&
            (identical(other.userWorkPlaceInfo, userWorkPlaceInfo) ||
                other.userWorkPlaceInfo == userWorkPlaceInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    const DeepCollectionEquality().hash(_filters),
    deleted,
    didWatchOnboarding,
    didRateApp,
    isTempUser,
    firstName,
    middleName,
    lastName,
    nickName,
    preferShowNickName,
    primaryPhoneNumber,
    secondaryPhoneNumber,
    emergencyContact,
    addressModel,
    gender,
    defaultProfilePictureUrl,
    email,
    dateOfBirth,
    const DeepCollectionEquality().hash(_userWorkPlaceRelation),
    userSettings,
    userWorkPlaceInfo,
  ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String? updatedBy,
    final List<String> filters,
    final bool deleted,
    final bool didWatchOnboarding,
    final bool didRateApp,
    final bool isTempUser,
    final String firstName,
    final String middleName,
    final String lastName,
    required final String nickName,
    final bool preferShowNickName,
    final PhoneNumberModel? primaryPhoneNumber,
    final PhoneNumberModel? secondaryPhoneNumber,
    final EmergnecyContact? emergencyContact,
    final AddressModel? addressModel,
    final Gender gender,
    final String? defaultProfilePictureUrl,
    final String? email,
    final String? dateOfBirth,
    @JsonKey(ignore: true)
    final Map<String, UserWorkPlaceRelation> userWorkPlaceRelation,
    required final UserSettings userSettings,
    @JsonKey(ignore: true) final UserWorkPlaceInfo? userWorkPlaceInfo,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  String? get updatedBy;
  @override
  List<String> get filters;
  @override
  bool get deleted;
  @override
  bool get didWatchOnboarding;
  @override
  bool get didRateApp;
  @override
  bool get isTempUser;
  @override
  String get firstName;
  @override
  String get middleName;
  @override
  String get lastName;
  @override
  String get nickName;
  @override
  bool get preferShowNickName;
  @override
  PhoneNumberModel? get primaryPhoneNumber;
  @override
  PhoneNumberModel? get secondaryPhoneNumber;
  @override
  EmergnecyContact? get emergencyContact;
  @override
  AddressModel? get addressModel;
  @override
  Gender get gender;
  @override
  String? get defaultProfilePictureUrl;
  @override
  String? get email;
  @override
  String? get dateOfBirth;
  @override
  @JsonKey(ignore: true)
  Map<String, UserWorkPlaceRelation> get userWorkPlaceRelation;
  @override
  UserSettings get userSettings;
  @override
  @JsonKey(ignore: true)
  UserWorkPlaceInfo? get userWorkPlaceInfo;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
