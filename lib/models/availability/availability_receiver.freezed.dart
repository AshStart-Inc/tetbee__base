// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_receiver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AvailabilityReceiver _$AvailabilityReceiverFromJson(Map<String, dynamic> json) {
  return AavailabilityReceiver.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityReceiver {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  List<String> get excludedUserList => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
  List<DateTime> get dateTimes => throw _privateConstructorUsedError;
  Map<String, UserAvailabilitySubmissionInfo> get userSubmissionInfo =>
      throw _privateConstructorUsedError;
  AvailabilityReceiverSetting get availabilityReceiverSetting =>
      throw _privateConstructorUsedError;

  /// Serializes this AvailabilityReceiver to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityReceiverCopyWith<AvailabilityReceiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityReceiverCopyWith<$Res> {
  factory $AvailabilityReceiverCopyWith(
    AvailabilityReceiver value,
    $Res Function(AvailabilityReceiver) then,
  ) = _$AvailabilityReceiverCopyWithImpl<$Res, AvailabilityReceiver>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    bool deleted,
    List<String> excludedUserList,
    String updatedBy,
    bool isOpened,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    List<DateTime> dateTimes,
    Map<String, UserAvailabilitySubmissionInfo> userSubmissionInfo,
    AvailabilityReceiverSetting availabilityReceiverSetting,
  });

  $AvailabilityReceiverSettingCopyWith<$Res> get availabilityReceiverSetting;
}

/// @nodoc
class _$AvailabilityReceiverCopyWithImpl<
  $Res,
  $Val extends AvailabilityReceiver
>
    implements $AvailabilityReceiverCopyWith<$Res> {
  _$AvailabilityReceiverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? deleted = null,
    Object? excludedUserList = null,
    Object? updatedBy = null,
    Object? isOpened = null,
    Object? dateTimes = null,
    Object? userSubmissionInfo = null,
    Object? availabilityReceiverSetting = null,
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
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            excludedUserList:
                null == excludedUserList
                    ? _value.excludedUserList
                    : excludedUserList // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            updatedBy:
                null == updatedBy
                    ? _value.updatedBy
                    : updatedBy // ignore: cast_nullable_to_non_nullable
                        as String,
            isOpened:
                null == isOpened
                    ? _value.isOpened
                    : isOpened // ignore: cast_nullable_to_non_nullable
                        as bool,
            dateTimes:
                null == dateTimes
                    ? _value.dateTimes
                    : dateTimes // ignore: cast_nullable_to_non_nullable
                        as List<DateTime>,
            userSubmissionInfo:
                null == userSubmissionInfo
                    ? _value.userSubmissionInfo
                    : userSubmissionInfo // ignore: cast_nullable_to_non_nullable
                        as Map<String, UserAvailabilitySubmissionInfo>,
            availabilityReceiverSetting:
                null == availabilityReceiverSetting
                    ? _value.availabilityReceiverSetting
                    : availabilityReceiverSetting // ignore: cast_nullable_to_non_nullable
                        as AvailabilityReceiverSetting,
          )
          as $Val,
    );
  }

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailabilityReceiverSettingCopyWith<$Res> get availabilityReceiverSetting {
    return $AvailabilityReceiverSettingCopyWith<$Res>(
      _value.availabilityReceiverSetting,
      (value) {
        return _then(
          _value.copyWith(availabilityReceiverSetting: value) as $Val,
        );
      },
    );
  }
}

/// @nodoc
abstract class _$$AavailabilityReceiverImplCopyWith<$Res>
    implements $AvailabilityReceiverCopyWith<$Res> {
  factory _$$AavailabilityReceiverImplCopyWith(
    _$AavailabilityReceiverImpl value,
    $Res Function(_$AavailabilityReceiverImpl) then,
  ) = __$$AavailabilityReceiverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    bool deleted,
    List<String> excludedUserList,
    String updatedBy,
    bool isOpened,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    List<DateTime> dateTimes,
    Map<String, UserAvailabilitySubmissionInfo> userSubmissionInfo,
    AvailabilityReceiverSetting availabilityReceiverSetting,
  });

  @override
  $AvailabilityReceiverSettingCopyWith<$Res> get availabilityReceiverSetting;
}

/// @nodoc
class __$$AavailabilityReceiverImplCopyWithImpl<$Res>
    extends
        _$AvailabilityReceiverCopyWithImpl<$Res, _$AavailabilityReceiverImpl>
    implements _$$AavailabilityReceiverImplCopyWith<$Res> {
  __$$AavailabilityReceiverImplCopyWithImpl(
    _$AavailabilityReceiverImpl _value,
    $Res Function(_$AavailabilityReceiverImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? deleted = null,
    Object? excludedUserList = null,
    Object? updatedBy = null,
    Object? isOpened = null,
    Object? dateTimes = null,
    Object? userSubmissionInfo = null,
    Object? availabilityReceiverSetting = null,
  }) {
    return _then(
      _$AavailabilityReceiverImpl(
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
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        excludedUserList:
            null == excludedUserList
                ? _value._excludedUserList
                : excludedUserList // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        updatedBy:
            null == updatedBy
                ? _value.updatedBy
                : updatedBy // ignore: cast_nullable_to_non_nullable
                    as String,
        isOpened:
            null == isOpened
                ? _value.isOpened
                : isOpened // ignore: cast_nullable_to_non_nullable
                    as bool,
        dateTimes:
            null == dateTimes
                ? _value._dateTimes
                : dateTimes // ignore: cast_nullable_to_non_nullable
                    as List<DateTime>,
        userSubmissionInfo:
            null == userSubmissionInfo
                ? _value._userSubmissionInfo
                : userSubmissionInfo // ignore: cast_nullable_to_non_nullable
                    as Map<String, UserAvailabilitySubmissionInfo>,
        availabilityReceiverSetting:
            null == availabilityReceiverSetting
                ? _value.availabilityReceiverSetting
                : availabilityReceiverSetting // ignore: cast_nullable_to_non_nullable
                    as AvailabilityReceiverSetting,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AavailabilityReceiverImpl implements AavailabilityReceiver {
  const _$AavailabilityReceiverImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.deleted = false,
    final List<String> excludedUserList = const [],
    this.updatedBy = '',
    this.isOpened = false,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    final List<DateTime> dateTimes = const [],
    final Map<String, UserAvailabilitySubmissionInfo> userSubmissionInfo =
        const {},
    this.availabilityReceiverSetting = const AvailabilityReceiverSetting(),
  }) : _excludedUserList = excludedUserList,
       _dateTimes = dateTimes,
       _userSubmissionInfo = userSubmissionInfo;

  factory _$AavailabilityReceiverImpl.fromJson(Map<String, dynamic> json) =>
      _$$AavailabilityReceiverImplFromJson(json);

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
  final bool deleted;
  final List<String> _excludedUserList;
  @override
  @JsonKey()
  List<String> get excludedUserList {
    if (_excludedUserList is EqualUnmodifiableListView)
      return _excludedUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludedUserList);
  }

  @override
  @JsonKey()
  final String updatedBy;
  @override
  @JsonKey()
  final bool isOpened;
  final List<DateTime> _dateTimes;
  @override
  @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
  List<DateTime> get dateTimes {
    if (_dateTimes is EqualUnmodifiableListView) return _dateTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateTimes);
  }

  final Map<String, UserAvailabilitySubmissionInfo> _userSubmissionInfo;
  @override
  @JsonKey()
  Map<String, UserAvailabilitySubmissionInfo> get userSubmissionInfo {
    if (_userSubmissionInfo is EqualUnmodifiableMapView)
      return _userSubmissionInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userSubmissionInfo);
  }

  @override
  @JsonKey()
  final AvailabilityReceiverSetting availabilityReceiverSetting;

  @override
  String toString() {
    return 'AvailabilityReceiver(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, deleted: $deleted, excludedUserList: $excludedUserList, updatedBy: $updatedBy, isOpened: $isOpened, dateTimes: $dateTimes, userSubmissionInfo: $userSubmissionInfo, availabilityReceiverSetting: $availabilityReceiverSetting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AavailabilityReceiverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            const DeepCollectionEquality().equals(
              other._excludedUserList,
              _excludedUserList,
            ) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened) &&
            const DeepCollectionEquality().equals(
              other._dateTimes,
              _dateTimes,
            ) &&
            const DeepCollectionEquality().equals(
              other._userSubmissionInfo,
              _userSubmissionInfo,
            ) &&
            (identical(
                  other.availabilityReceiverSetting,
                  availabilityReceiverSetting,
                ) ||
                other.availabilityReceiverSetting ==
                    availabilityReceiverSetting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    createdBy,
    updatedAt,
    deleted,
    const DeepCollectionEquality().hash(_excludedUserList),
    updatedBy,
    isOpened,
    const DeepCollectionEquality().hash(_dateTimes),
    const DeepCollectionEquality().hash(_userSubmissionInfo),
    availabilityReceiverSetting,
  );

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AavailabilityReceiverImplCopyWith<_$AavailabilityReceiverImpl>
  get copyWith =>
      __$$AavailabilityReceiverImplCopyWithImpl<_$AavailabilityReceiverImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AavailabilityReceiverImplToJson(this);
  }
}

abstract class AavailabilityReceiver implements AvailabilityReceiver {
  const factory AavailabilityReceiver({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final bool deleted,
    final List<String> excludedUserList,
    final String updatedBy,
    final bool isOpened,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    final List<DateTime> dateTimes,
    final Map<String, UserAvailabilitySubmissionInfo> userSubmissionInfo,
    final AvailabilityReceiverSetting availabilityReceiverSetting,
  }) = _$AavailabilityReceiverImpl;

  factory AavailabilityReceiver.fromJson(Map<String, dynamic> json) =
      _$AavailabilityReceiverImpl.fromJson;

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
  bool get deleted;
  @override
  List<String> get excludedUserList;
  @override
  String get updatedBy;
  @override
  bool get isOpened;
  @override
  @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
  List<DateTime> get dateTimes;
  @override
  Map<String, UserAvailabilitySubmissionInfo> get userSubmissionInfo;
  @override
  AvailabilityReceiverSetting get availabilityReceiverSetting;

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AavailabilityReceiverImplCopyWith<_$AavailabilityReceiverImpl>
  get copyWith => throw _privateConstructorUsedError;
}
