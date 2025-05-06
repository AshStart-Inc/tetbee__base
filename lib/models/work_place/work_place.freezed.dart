// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkPlace _$WorkPlaceFromJson(Map<String, dynamic> json) {
  return _WorkPlace.fromJson(json);
}

/// @nodoc
mixin _$WorkPlace {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get placeOwnerId => throw _privateConstructorUsedError;
  String get currentMembershipId => throw _privateConstructorUsedError;
  int get startWeekDay => throw _privateConstructorUsedError;
  GooglePlaceModel get googlePlaceModel => throw _privateConstructorUsedError;
  String? get email1 => throw _privateConstructorUsedError;
  String? get email2 => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get defaultProfilePictureUrl => throw _privateConstructorUsedError;
  dynamic get isOpened => throw _privateConstructorUsedError;
  dynamic get isVerified => throw _privateConstructorUsedError;
  PhoneNumberModel? get primaryPhoneNumber =>
      throw _privateConstructorUsedError;
  PhoneNumberModel? get secondaryPhoneNumber =>
      throw _privateConstructorUsedError;
  String get workPlaceTypeId => throw _privateConstructorUsedError;
  TimeZoneModel get timeZone => throw _privateConstructorUsedError;
  List<String> get ownersIds => throw _privateConstructorUsedError;
  Map<String, int> get joinedUsersOrdinal => throw _privateConstructorUsedError;
  List<PositionModel> get positions => throw _privateConstructorUsedError;
  List<WorkPlaceOpeningTime> get openingTimes =>
      throw _privateConstructorUsedError;
  AvailabilityReceiverSetting get availabilityReceiverDefaultSetting =>
      throw _privateConstructorUsedError;
  List<WorkPlaceOpeningTime>? get availabilityTimes =>
      throw _privateConstructorUsedError;

  /// Serializes this WorkPlace to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkPlaceCopyWith<WorkPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPlaceCopyWith<$Res> {
  factory $WorkPlaceCopyWith(WorkPlace value, $Res Function(WorkPlace) then) =
      _$WorkPlaceCopyWithImpl<$Res, WorkPlace>;
  @useResult
  $Res call({
    String id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    bool deleted,
    String placeOwnerId,
    String currentMembershipId,
    int startWeekDay,
    GooglePlaceModel googlePlaceModel,
    String? email1,
    String? email2,
    String? website,
    String? defaultProfilePictureUrl,
    dynamic isOpened,
    dynamic isVerified,
    PhoneNumberModel? primaryPhoneNumber,
    PhoneNumberModel? secondaryPhoneNumber,
    String workPlaceTypeId,
    TimeZoneModel timeZone,
    List<String> ownersIds,
    Map<String, int> joinedUsersOrdinal,
    List<PositionModel> positions,
    List<WorkPlaceOpeningTime> openingTimes,
    AvailabilityReceiverSetting availabilityReceiverDefaultSetting,
    List<WorkPlaceOpeningTime>? availabilityTimes,
  });

  $GooglePlaceModelCopyWith<$Res> get googlePlaceModel;
  $PhoneNumberModelCopyWith<$Res>? get primaryPhoneNumber;
  $PhoneNumberModelCopyWith<$Res>? get secondaryPhoneNumber;
  $TimeZoneModelCopyWith<$Res> get timeZone;
  $AvailabilityReceiverSettingCopyWith<$Res>
  get availabilityReceiverDefaultSetting;
}

/// @nodoc
class _$WorkPlaceCopyWithImpl<$Res, $Val extends WorkPlace>
    implements $WorkPlaceCopyWith<$Res> {
  _$WorkPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? deleted = null,
    Object? placeOwnerId = null,
    Object? currentMembershipId = null,
    Object? startWeekDay = null,
    Object? googlePlaceModel = null,
    Object? email1 = freezed,
    Object? email2 = freezed,
    Object? website = freezed,
    Object? defaultProfilePictureUrl = freezed,
    Object? isOpened = freezed,
    Object? isVerified = freezed,
    Object? primaryPhoneNumber = freezed,
    Object? secondaryPhoneNumber = freezed,
    Object? workPlaceTypeId = null,
    Object? timeZone = null,
    Object? ownersIds = null,
    Object? joinedUsersOrdinal = null,
    Object? positions = null,
    Object? openingTimes = null,
    Object? availabilityReceiverDefaultSetting = null,
    Object? availabilityTimes = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
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
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            placeOwnerId:
                null == placeOwnerId
                    ? _value.placeOwnerId
                    : placeOwnerId // ignore: cast_nullable_to_non_nullable
                        as String,
            currentMembershipId:
                null == currentMembershipId
                    ? _value.currentMembershipId
                    : currentMembershipId // ignore: cast_nullable_to_non_nullable
                        as String,
            startWeekDay:
                null == startWeekDay
                    ? _value.startWeekDay
                    : startWeekDay // ignore: cast_nullable_to_non_nullable
                        as int,
            googlePlaceModel:
                null == googlePlaceModel
                    ? _value.googlePlaceModel
                    : googlePlaceModel // ignore: cast_nullable_to_non_nullable
                        as GooglePlaceModel,
            email1:
                freezed == email1
                    ? _value.email1
                    : email1 // ignore: cast_nullable_to_non_nullable
                        as String?,
            email2:
                freezed == email2
                    ? _value.email2
                    : email2 // ignore: cast_nullable_to_non_nullable
                        as String?,
            website:
                freezed == website
                    ? _value.website
                    : website // ignore: cast_nullable_to_non_nullable
                        as String?,
            defaultProfilePictureUrl:
                freezed == defaultProfilePictureUrl
                    ? _value.defaultProfilePictureUrl
                    : defaultProfilePictureUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            isOpened:
                freezed == isOpened
                    ? _value.isOpened
                    : isOpened // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            isVerified:
                freezed == isVerified
                    ? _value.isVerified
                    : isVerified // ignore: cast_nullable_to_non_nullable
                        as dynamic,
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
            workPlaceTypeId:
                null == workPlaceTypeId
                    ? _value.workPlaceTypeId
                    : workPlaceTypeId // ignore: cast_nullable_to_non_nullable
                        as String,
            timeZone:
                null == timeZone
                    ? _value.timeZone
                    : timeZone // ignore: cast_nullable_to_non_nullable
                        as TimeZoneModel,
            ownersIds:
                null == ownersIds
                    ? _value.ownersIds
                    : ownersIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            joinedUsersOrdinal:
                null == joinedUsersOrdinal
                    ? _value.joinedUsersOrdinal
                    : joinedUsersOrdinal // ignore: cast_nullable_to_non_nullable
                        as Map<String, int>,
            positions:
                null == positions
                    ? _value.positions
                    : positions // ignore: cast_nullable_to_non_nullable
                        as List<PositionModel>,
            openingTimes:
                null == openingTimes
                    ? _value.openingTimes
                    : openingTimes // ignore: cast_nullable_to_non_nullable
                        as List<WorkPlaceOpeningTime>,
            availabilityReceiverDefaultSetting:
                null == availabilityReceiverDefaultSetting
                    ? _value.availabilityReceiverDefaultSetting
                    : availabilityReceiverDefaultSetting // ignore: cast_nullable_to_non_nullable
                        as AvailabilityReceiverSetting,
            availabilityTimes:
                freezed == availabilityTimes
                    ? _value.availabilityTimes
                    : availabilityTimes // ignore: cast_nullable_to_non_nullable
                        as List<WorkPlaceOpeningTime>?,
          )
          as $Val,
    );
  }

  /// Create a copy of WorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GooglePlaceModelCopyWith<$Res> get googlePlaceModel {
    return $GooglePlaceModelCopyWith<$Res>(_value.googlePlaceModel, (value) {
      return _then(_value.copyWith(googlePlaceModel: value) as $Val);
    });
  }

  /// Create a copy of WorkPlace
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

  /// Create a copy of WorkPlace
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

  /// Create a copy of WorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeZoneModelCopyWith<$Res> get timeZone {
    return $TimeZoneModelCopyWith<$Res>(_value.timeZone, (value) {
      return _then(_value.copyWith(timeZone: value) as $Val);
    });
  }

  /// Create a copy of WorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailabilityReceiverSettingCopyWith<$Res>
  get availabilityReceiverDefaultSetting {
    return $AvailabilityReceiverSettingCopyWith<$Res>(
      _value.availabilityReceiverDefaultSetting,
      (value) {
        return _then(
          _value.copyWith(availabilityReceiverDefaultSetting: value) as $Val,
        );
      },
    );
  }
}

/// @nodoc
abstract class _$$WorkPlaceImplCopyWith<$Res>
    implements $WorkPlaceCopyWith<$Res> {
  factory _$$WorkPlaceImplCopyWith(
    _$WorkPlaceImpl value,
    $Res Function(_$WorkPlaceImpl) then,
  ) = __$$WorkPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    bool deleted,
    String placeOwnerId,
    String currentMembershipId,
    int startWeekDay,
    GooglePlaceModel googlePlaceModel,
    String? email1,
    String? email2,
    String? website,
    String? defaultProfilePictureUrl,
    dynamic isOpened,
    dynamic isVerified,
    PhoneNumberModel? primaryPhoneNumber,
    PhoneNumberModel? secondaryPhoneNumber,
    String workPlaceTypeId,
    TimeZoneModel timeZone,
    List<String> ownersIds,
    Map<String, int> joinedUsersOrdinal,
    List<PositionModel> positions,
    List<WorkPlaceOpeningTime> openingTimes,
    AvailabilityReceiverSetting availabilityReceiverDefaultSetting,
    List<WorkPlaceOpeningTime>? availabilityTimes,
  });

  @override
  $GooglePlaceModelCopyWith<$Res> get googlePlaceModel;
  @override
  $PhoneNumberModelCopyWith<$Res>? get primaryPhoneNumber;
  @override
  $PhoneNumberModelCopyWith<$Res>? get secondaryPhoneNumber;
  @override
  $TimeZoneModelCopyWith<$Res> get timeZone;
  @override
  $AvailabilityReceiverSettingCopyWith<$Res>
  get availabilityReceiverDefaultSetting;
}

/// @nodoc
class __$$WorkPlaceImplCopyWithImpl<$Res>
    extends _$WorkPlaceCopyWithImpl<$Res, _$WorkPlaceImpl>
    implements _$$WorkPlaceImplCopyWith<$Res> {
  __$$WorkPlaceImplCopyWithImpl(
    _$WorkPlaceImpl _value,
    $Res Function(_$WorkPlaceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? deleted = null,
    Object? placeOwnerId = null,
    Object? currentMembershipId = null,
    Object? startWeekDay = null,
    Object? googlePlaceModel = null,
    Object? email1 = freezed,
    Object? email2 = freezed,
    Object? website = freezed,
    Object? defaultProfilePictureUrl = freezed,
    Object? isOpened = freezed,
    Object? isVerified = freezed,
    Object? primaryPhoneNumber = freezed,
    Object? secondaryPhoneNumber = freezed,
    Object? workPlaceTypeId = null,
    Object? timeZone = null,
    Object? ownersIds = null,
    Object? joinedUsersOrdinal = null,
    Object? positions = null,
    Object? openingTimes = null,
    Object? availabilityReceiverDefaultSetting = null,
    Object? availabilityTimes = freezed,
  }) {
    return _then(
      _$WorkPlaceImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
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
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        placeOwnerId:
            null == placeOwnerId
                ? _value.placeOwnerId
                : placeOwnerId // ignore: cast_nullable_to_non_nullable
                    as String,
        currentMembershipId:
            null == currentMembershipId
                ? _value.currentMembershipId
                : currentMembershipId // ignore: cast_nullable_to_non_nullable
                    as String,
        startWeekDay:
            null == startWeekDay
                ? _value.startWeekDay
                : startWeekDay // ignore: cast_nullable_to_non_nullable
                    as int,
        googlePlaceModel:
            null == googlePlaceModel
                ? _value.googlePlaceModel
                : googlePlaceModel // ignore: cast_nullable_to_non_nullable
                    as GooglePlaceModel,
        email1:
            freezed == email1
                ? _value.email1
                : email1 // ignore: cast_nullable_to_non_nullable
                    as String?,
        email2:
            freezed == email2
                ? _value.email2
                : email2 // ignore: cast_nullable_to_non_nullable
                    as String?,
        website:
            freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                    as String?,
        defaultProfilePictureUrl:
            freezed == defaultProfilePictureUrl
                ? _value.defaultProfilePictureUrl
                : defaultProfilePictureUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        isOpened: freezed == isOpened ? _value.isOpened! : isOpened,
        isVerified: freezed == isVerified ? _value.isVerified! : isVerified,
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
        workPlaceTypeId:
            null == workPlaceTypeId
                ? _value.workPlaceTypeId
                : workPlaceTypeId // ignore: cast_nullable_to_non_nullable
                    as String,
        timeZone:
            null == timeZone
                ? _value.timeZone
                : timeZone // ignore: cast_nullable_to_non_nullable
                    as TimeZoneModel,
        ownersIds:
            null == ownersIds
                ? _value._ownersIds
                : ownersIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        joinedUsersOrdinal:
            null == joinedUsersOrdinal
                ? _value._joinedUsersOrdinal
                : joinedUsersOrdinal // ignore: cast_nullable_to_non_nullable
                    as Map<String, int>,
        positions:
            null == positions
                ? _value._positions
                : positions // ignore: cast_nullable_to_non_nullable
                    as List<PositionModel>,
        openingTimes:
            null == openingTimes
                ? _value._openingTimes
                : openingTimes // ignore: cast_nullable_to_non_nullable
                    as List<WorkPlaceOpeningTime>,
        availabilityReceiverDefaultSetting:
            null == availabilityReceiverDefaultSetting
                ? _value.availabilityReceiverDefaultSetting
                : availabilityReceiverDefaultSetting // ignore: cast_nullable_to_non_nullable
                    as AvailabilityReceiverSetting,
        availabilityTimes:
            freezed == availabilityTimes
                ? _value._availabilityTimes
                : availabilityTimes // ignore: cast_nullable_to_non_nullable
                    as List<WorkPlaceOpeningTime>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkPlaceImpl implements _WorkPlace {
  const _$WorkPlaceImpl({
    required this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    required this.createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.deleted = false,
    required this.placeOwnerId,
    required this.currentMembershipId,
    required this.startWeekDay,
    required this.googlePlaceModel,
    this.email1,
    this.email2,
    this.website,
    this.defaultProfilePictureUrl,
    this.isOpened = false,
    this.isVerified = false,
    this.primaryPhoneNumber,
    this.secondaryPhoneNumber,
    required this.workPlaceTypeId,
    required this.timeZone,
    required final List<String> ownersIds,
    required final Map<String, int> joinedUsersOrdinal,
    required final List<PositionModel> positions,
    required final List<WorkPlaceOpeningTime> openingTimes,
    required this.availabilityReceiverDefaultSetting,
    final List<WorkPlaceOpeningTime>? availabilityTimes,
  }) : _ownersIds = ownersIds,
       _joinedUsersOrdinal = joinedUsersOrdinal,
       _positions = positions,
       _openingTimes = openingTimes,
       _availabilityTimes = availabilityTimes;

  factory _$WorkPlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkPlaceImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? createdAt;
  @override
  final String createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final bool deleted;
  @override
  final String placeOwnerId;
  @override
  final String currentMembershipId;
  @override
  final int startWeekDay;
  @override
  final GooglePlaceModel googlePlaceModel;
  @override
  final String? email1;
  @override
  final String? email2;
  @override
  final String? website;
  @override
  final String? defaultProfilePictureUrl;
  @override
  @JsonKey()
  final dynamic isOpened;
  @override
  @JsonKey()
  final dynamic isVerified;
  @override
  final PhoneNumberModel? primaryPhoneNumber;
  @override
  final PhoneNumberModel? secondaryPhoneNumber;
  @override
  final String workPlaceTypeId;
  @override
  final TimeZoneModel timeZone;
  final List<String> _ownersIds;
  @override
  List<String> get ownersIds {
    if (_ownersIds is EqualUnmodifiableListView) return _ownersIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ownersIds);
  }

  final Map<String, int> _joinedUsersOrdinal;
  @override
  Map<String, int> get joinedUsersOrdinal {
    if (_joinedUsersOrdinal is EqualUnmodifiableMapView)
      return _joinedUsersOrdinal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_joinedUsersOrdinal);
  }

  final List<PositionModel> _positions;
  @override
  List<PositionModel> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  final List<WorkPlaceOpeningTime> _openingTimes;
  @override
  List<WorkPlaceOpeningTime> get openingTimes {
    if (_openingTimes is EqualUnmodifiableListView) return _openingTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openingTimes);
  }

  @override
  final AvailabilityReceiverSetting availabilityReceiverDefaultSetting;
  final List<WorkPlaceOpeningTime>? _availabilityTimes;
  @override
  List<WorkPlaceOpeningTime>? get availabilityTimes {
    final value = _availabilityTimes;
    if (value == null) return null;
    if (_availabilityTimes is EqualUnmodifiableListView)
      return _availabilityTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkPlace(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, deleted: $deleted, placeOwnerId: $placeOwnerId, currentMembershipId: $currentMembershipId, startWeekDay: $startWeekDay, googlePlaceModel: $googlePlaceModel, email1: $email1, email2: $email2, website: $website, defaultProfilePictureUrl: $defaultProfilePictureUrl, isOpened: $isOpened, isVerified: $isVerified, primaryPhoneNumber: $primaryPhoneNumber, secondaryPhoneNumber: $secondaryPhoneNumber, workPlaceTypeId: $workPlaceTypeId, timeZone: $timeZone, ownersIds: $ownersIds, joinedUsersOrdinal: $joinedUsersOrdinal, positions: $positions, openingTimes: $openingTimes, availabilityReceiverDefaultSetting: $availabilityReceiverDefaultSetting, availabilityTimes: $availabilityTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkPlaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.placeOwnerId, placeOwnerId) ||
                other.placeOwnerId == placeOwnerId) &&
            (identical(other.currentMembershipId, currentMembershipId) ||
                other.currentMembershipId == currentMembershipId) &&
            (identical(other.startWeekDay, startWeekDay) ||
                other.startWeekDay == startWeekDay) &&
            (identical(other.googlePlaceModel, googlePlaceModel) ||
                other.googlePlaceModel == googlePlaceModel) &&
            (identical(other.email1, email1) || other.email1 == email1) &&
            (identical(other.email2, email2) || other.email2 == email2) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(
                  other.defaultProfilePictureUrl,
                  defaultProfilePictureUrl,
                ) ||
                other.defaultProfilePictureUrl == defaultProfilePictureUrl) &&
            const DeepCollectionEquality().equals(other.isOpened, isOpened) &&
            const DeepCollectionEquality().equals(
              other.isVerified,
              isVerified,
            ) &&
            (identical(other.primaryPhoneNumber, primaryPhoneNumber) ||
                other.primaryPhoneNumber == primaryPhoneNumber) &&
            (identical(other.secondaryPhoneNumber, secondaryPhoneNumber) ||
                other.secondaryPhoneNumber == secondaryPhoneNumber) &&
            (identical(other.workPlaceTypeId, workPlaceTypeId) ||
                other.workPlaceTypeId == workPlaceTypeId) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            const DeepCollectionEquality().equals(
              other._ownersIds,
              _ownersIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._joinedUsersOrdinal,
              _joinedUsersOrdinal,
            ) &&
            const DeepCollectionEquality().equals(
              other._positions,
              _positions,
            ) &&
            const DeepCollectionEquality().equals(
              other._openingTimes,
              _openingTimes,
            ) &&
            (identical(
                  other.availabilityReceiverDefaultSetting,
                  availabilityReceiverDefaultSetting,
                ) ||
                other.availabilityReceiverDefaultSetting ==
                    availabilityReceiverDefaultSetting) &&
            const DeepCollectionEquality().equals(
              other._availabilityTimes,
              _availabilityTimes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    createdAt,
    createdBy,
    updatedAt,
    deleted,
    placeOwnerId,
    currentMembershipId,
    startWeekDay,
    googlePlaceModel,
    email1,
    email2,
    website,
    defaultProfilePictureUrl,
    const DeepCollectionEquality().hash(isOpened),
    const DeepCollectionEquality().hash(isVerified),
    primaryPhoneNumber,
    secondaryPhoneNumber,
    workPlaceTypeId,
    timeZone,
    const DeepCollectionEquality().hash(_ownersIds),
    const DeepCollectionEquality().hash(_joinedUsersOrdinal),
    const DeepCollectionEquality().hash(_positions),
    const DeepCollectionEquality().hash(_openingTimes),
    availabilityReceiverDefaultSetting,
    const DeepCollectionEquality().hash(_availabilityTimes),
  ]);

  /// Create a copy of WorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkPlaceImplCopyWith<_$WorkPlaceImpl> get copyWith =>
      __$$WorkPlaceImplCopyWithImpl<_$WorkPlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkPlaceImplToJson(this);
  }
}

abstract class _WorkPlace implements WorkPlace {
  const factory _WorkPlace({
    required final String id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    required final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final bool deleted,
    required final String placeOwnerId,
    required final String currentMembershipId,
    required final int startWeekDay,
    required final GooglePlaceModel googlePlaceModel,
    final String? email1,
    final String? email2,
    final String? website,
    final String? defaultProfilePictureUrl,
    final dynamic isOpened,
    final dynamic isVerified,
    final PhoneNumberModel? primaryPhoneNumber,
    final PhoneNumberModel? secondaryPhoneNumber,
    required final String workPlaceTypeId,
    required final TimeZoneModel timeZone,
    required final List<String> ownersIds,
    required final Map<String, int> joinedUsersOrdinal,
    required final List<PositionModel> positions,
    required final List<WorkPlaceOpeningTime> openingTimes,
    required final AvailabilityReceiverSetting
    availabilityReceiverDefaultSetting,
    final List<WorkPlaceOpeningTime>? availabilityTimes,
  }) = _$WorkPlaceImpl;

  factory _WorkPlace.fromJson(Map<String, dynamic> json) =
      _$WorkPlaceImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  bool get deleted;
  @override
  String get placeOwnerId;
  @override
  String get currentMembershipId;
  @override
  int get startWeekDay;
  @override
  GooglePlaceModel get googlePlaceModel;
  @override
  String? get email1;
  @override
  String? get email2;
  @override
  String? get website;
  @override
  String? get defaultProfilePictureUrl;
  @override
  dynamic get isOpened;
  @override
  dynamic get isVerified;
  @override
  PhoneNumberModel? get primaryPhoneNumber;
  @override
  PhoneNumberModel? get secondaryPhoneNumber;
  @override
  String get workPlaceTypeId;
  @override
  TimeZoneModel get timeZone;
  @override
  List<String> get ownersIds;
  @override
  Map<String, int> get joinedUsersOrdinal;
  @override
  List<PositionModel> get positions;
  @override
  List<WorkPlaceOpeningTime> get openingTimes;
  @override
  AvailabilityReceiverSetting get availabilityReceiverDefaultSetting;
  @override
  List<WorkPlaceOpeningTime>? get availabilityTimes;

  /// Create a copy of WorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkPlaceImplCopyWith<_$WorkPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
