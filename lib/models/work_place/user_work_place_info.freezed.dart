// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_work_place_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserWorkPlaceInfo _$UserWorkPlaceInfoFromJson(Map<String, dynamic> json) {
  return _UserWorkPlaceInfo.fromJson(json);
}

/// @nodoc
mixin _$UserWorkPlaceInfo {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  int get ordinal => throw _privateConstructorUsedError;
  bool get isTempUser => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  String get workPlaceNickName => throw _privateConstructorUsedError;
  WorkingStatus get workingStatus => throw _privateConstructorUsedError;
  List<String> get positions => throw _privateConstructorUsedError;
  UserPlacePermission? get userPlacePermission =>
      throw _privateConstructorUsedError;

  /// Serializes this UserWorkPlaceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserWorkPlaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWorkPlaceInfoCopyWith<UserWorkPlaceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWorkPlaceInfoCopyWith<$Res> {
  factory $UserWorkPlaceInfoCopyWith(
    UserWorkPlaceInfo value,
    $Res Function(UserWorkPlaceInfo) then,
  ) = _$UserWorkPlaceInfoCopyWithImpl<$Res, UserWorkPlaceInfo>;
  @useResult
  $Res call({
    @JsonKey(ignore: true) String id,
    int ordinal,
    bool isTempUser,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    String workPlaceNickName,
    WorkingStatus workingStatus,
    List<String> positions,
    UserPlacePermission? userPlacePermission,
  });

  $UserPlacePermissionCopyWith<$Res>? get userPlacePermission;
}

/// @nodoc
class _$UserWorkPlaceInfoCopyWithImpl<$Res, $Val extends UserWorkPlaceInfo>
    implements $UserWorkPlaceInfoCopyWith<$Res> {
  _$UserWorkPlaceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWorkPlaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ordinal = null,
    Object? isTempUser = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? workPlaceNickName = null,
    Object? workingStatus = null,
    Object? positions = null,
    Object? userPlacePermission = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            ordinal:
                null == ordinal
                    ? _value.ordinal
                    : ordinal // ignore: cast_nullable_to_non_nullable
                        as int,
            isTempUser:
                null == isTempUser
                    ? _value.isTempUser
                    : isTempUser // ignore: cast_nullable_to_non_nullable
                        as bool,
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
                null == updatedBy
                    ? _value.updatedBy
                    : updatedBy // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceNickName:
                null == workPlaceNickName
                    ? _value.workPlaceNickName
                    : workPlaceNickName // ignore: cast_nullable_to_non_nullable
                        as String,
            workingStatus:
                null == workingStatus
                    ? _value.workingStatus
                    : workingStatus // ignore: cast_nullable_to_non_nullable
                        as WorkingStatus,
            positions:
                null == positions
                    ? _value.positions
                    : positions // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            userPlacePermission:
                freezed == userPlacePermission
                    ? _value.userPlacePermission
                    : userPlacePermission // ignore: cast_nullable_to_non_nullable
                        as UserPlacePermission?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserWorkPlaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPlacePermissionCopyWith<$Res>? get userPlacePermission {
    if (_value.userPlacePermission == null) {
      return null;
    }

    return $UserPlacePermissionCopyWith<$Res>(_value.userPlacePermission!, (
      value,
    ) {
      return _then(_value.copyWith(userPlacePermission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserWorkPlaceInfoImplCopyWith<$Res>
    implements $UserWorkPlaceInfoCopyWith<$Res> {
  factory _$$UserWorkPlaceInfoImplCopyWith(
    _$UserWorkPlaceInfoImpl value,
    $Res Function(_$UserWorkPlaceInfoImpl) then,
  ) = __$$UserWorkPlaceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(ignore: true) String id,
    int ordinal,
    bool isTempUser,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    String workPlaceNickName,
    WorkingStatus workingStatus,
    List<String> positions,
    UserPlacePermission? userPlacePermission,
  });

  @override
  $UserPlacePermissionCopyWith<$Res>? get userPlacePermission;
}

/// @nodoc
class __$$UserWorkPlaceInfoImplCopyWithImpl<$Res>
    extends _$UserWorkPlaceInfoCopyWithImpl<$Res, _$UserWorkPlaceInfoImpl>
    implements _$$UserWorkPlaceInfoImplCopyWith<$Res> {
  __$$UserWorkPlaceInfoImplCopyWithImpl(
    _$UserWorkPlaceInfoImpl _value,
    $Res Function(_$UserWorkPlaceInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserWorkPlaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ordinal = null,
    Object? isTempUser = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? workPlaceNickName = null,
    Object? workingStatus = null,
    Object? positions = null,
    Object? userPlacePermission = freezed,
  }) {
    return _then(
      _$UserWorkPlaceInfoImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        ordinal:
            null == ordinal
                ? _value.ordinal
                : ordinal // ignore: cast_nullable_to_non_nullable
                    as int,
        isTempUser:
            null == isTempUser
                ? _value.isTempUser
                : isTempUser // ignore: cast_nullable_to_non_nullable
                    as bool,
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
            null == updatedBy
                ? _value.updatedBy
                : updatedBy // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceNickName:
            null == workPlaceNickName
                ? _value.workPlaceNickName
                : workPlaceNickName // ignore: cast_nullable_to_non_nullable
                    as String,
        workingStatus:
            null == workingStatus
                ? _value.workingStatus
                : workingStatus // ignore: cast_nullable_to_non_nullable
                    as WorkingStatus,
        positions:
            null == positions
                ? _value._positions
                : positions // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        userPlacePermission:
            freezed == userPlacePermission
                ? _value.userPlacePermission
                : userPlacePermission // ignore: cast_nullable_to_non_nullable
                    as UserPlacePermission?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserWorkPlaceInfoImpl implements _UserWorkPlaceInfo {
  const _$UserWorkPlaceInfoImpl({
    @JsonKey(ignore: true) this.id = '',
    required this.ordinal,
    required this.isTempUser,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    required this.workPlaceNickName,
    this.workingStatus = WorkingStatus.fullTime,
    final List<String> positions = const [],
    this.userPlacePermission,
  }) : _positions = positions;

  factory _$UserWorkPlaceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserWorkPlaceInfoImplFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final int ordinal;
  @override
  final bool isTempUser;
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
  final String updatedBy;
  @override
  final String workPlaceNickName;
  @override
  @JsonKey()
  final WorkingStatus workingStatus;
  final List<String> _positions;
  @override
  @JsonKey()
  List<String> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  final UserPlacePermission? userPlacePermission;

  @override
  String toString() {
    return 'UserWorkPlaceInfo(id: $id, ordinal: $ordinal, isTempUser: $isTempUser, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, workPlaceNickName: $workPlaceNickName, workingStatus: $workingStatus, positions: $positions, userPlacePermission: $userPlacePermission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWorkPlaceInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ordinal, ordinal) || other.ordinal == ordinal) &&
            (identical(other.isTempUser, isTempUser) ||
                other.isTempUser == isTempUser) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.workPlaceNickName, workPlaceNickName) ||
                other.workPlaceNickName == workPlaceNickName) &&
            (identical(other.workingStatus, workingStatus) ||
                other.workingStatus == workingStatus) &&
            const DeepCollectionEquality().equals(
              other._positions,
              _positions,
            ) &&
            (identical(other.userPlacePermission, userPlacePermission) ||
                other.userPlacePermission == userPlacePermission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    ordinal,
    isTempUser,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    workPlaceNickName,
    workingStatus,
    const DeepCollectionEquality().hash(_positions),
    userPlacePermission,
  );

  /// Create a copy of UserWorkPlaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWorkPlaceInfoImplCopyWith<_$UserWorkPlaceInfoImpl> get copyWith =>
      __$$UserWorkPlaceInfoImplCopyWithImpl<_$UserWorkPlaceInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWorkPlaceInfoImplToJson(this);
  }
}

abstract class _UserWorkPlaceInfo implements UserWorkPlaceInfo {
  const factory _UserWorkPlaceInfo({
    @JsonKey(ignore: true) final String id,
    required final int ordinal,
    required final bool isTempUser,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    required final String workPlaceNickName,
    final WorkingStatus workingStatus,
    final List<String> positions,
    final UserPlacePermission? userPlacePermission,
  }) = _$UserWorkPlaceInfoImpl;

  factory _UserWorkPlaceInfo.fromJson(Map<String, dynamic> json) =
      _$UserWorkPlaceInfoImpl.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  int get ordinal;
  @override
  bool get isTempUser;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  String get updatedBy;
  @override
  String get workPlaceNickName;
  @override
  WorkingStatus get workingStatus;
  @override
  List<String> get positions;
  @override
  UserPlacePermission? get userPlacePermission;

  /// Create a copy of UserWorkPlaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWorkPlaceInfoImplCopyWith<_$UserWorkPlaceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
