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
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
  List<DateTime> get dateTimes => throw _privateConstructorUsedError;
  List<String> get selectedUserList => throw _privateConstructorUsedError;
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
    String title,
    String description,
    bool deleted,
    String updatedBy,
    bool isOpened,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    List<DateTime> dateTimes,
    List<String> selectedUserList,
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
    Object? title = null,
    Object? description = null,
    Object? deleted = null,
    Object? updatedBy = null,
    Object? isOpened = null,
    Object? dateTimes = null,
    Object? selectedUserList = null,
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
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
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
            selectedUserList:
                null == selectedUserList
                    ? _value.selectedUserList
                    : selectedUserList // ignore: cast_nullable_to_non_nullable
                        as List<String>,
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
    String title,
    String description,
    bool deleted,
    String updatedBy,
    bool isOpened,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    List<DateTime> dateTimes,
    List<String> selectedUserList,
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
    Object? title = null,
    Object? description = null,
    Object? deleted = null,
    Object? updatedBy = null,
    Object? isOpened = null,
    Object? dateTimes = null,
    Object? selectedUserList = null,
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
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
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
        selectedUserList:
            null == selectedUserList
                ? _value._selectedUserList
                : selectedUserList // ignore: cast_nullable_to_non_nullable
                    as List<String>,
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
    this.title = '',
    this.description = '',
    this.deleted = false,
    this.updatedBy = '',
    this.isOpened = false,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    final List<DateTime> dateTimes = const [],
    final List<String> selectedUserList = const [],
    final Map<String, UserAvailabilitySubmissionInfo> userSubmissionInfo =
        const {},
    this.availabilityReceiverSetting = const AvailabilityReceiverSetting(),
  }) : _dateTimes = dateTimes,
       _selectedUserList = selectedUserList,
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
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool deleted;
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

  final List<String> _selectedUserList;
  @override
  @JsonKey()
  List<String> get selectedUserList {
    if (_selectedUserList is EqualUnmodifiableListView)
      return _selectedUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUserList);
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
    return 'AvailabilityReceiver(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, title: $title, description: $description, deleted: $deleted, updatedBy: $updatedBy, isOpened: $isOpened, dateTimes: $dateTimes, selectedUserList: $selectedUserList, userSubmissionInfo: $userSubmissionInfo, availabilityReceiverSetting: $availabilityReceiverSetting)';
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
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened) &&
            const DeepCollectionEquality().equals(
              other._dateTimes,
              _dateTimes,
            ) &&
            const DeepCollectionEquality().equals(
              other._selectedUserList,
              _selectedUserList,
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
    title,
    description,
    deleted,
    updatedBy,
    isOpened,
    const DeepCollectionEquality().hash(_dateTimes),
    const DeepCollectionEquality().hash(_selectedUserList),
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
    final String title,
    final String description,
    final bool deleted,
    final String updatedBy,
    final bool isOpened,
    @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
    final List<DateTime> dateTimes,
    final List<String> selectedUserList,
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
  String get title;
  @override
  String get description;
  @override
  bool get deleted;
  @override
  String get updatedBy;
  @override
  bool get isOpened;
  @override
  @JsonKey(toJson: Helpers.listDateToJson, fromJson: Helpers.listDateFromJson)
  List<DateTime> get dateTimes;
  @override
  List<String> get selectedUserList;
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
