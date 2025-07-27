// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tetbee_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TetbeeLog _$TetbeeLogFromJson(Map<String, dynamic> json) {
  return _TetbeeLog.fromJson(json);
}

/// @nodoc
mixin _$TetbeeLog {
  String? get id => throw _privateConstructorUsedError;
  String get dataPath => throw _privateConstructorUsedError;
  String? get workPlaceId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get dataSnapshot => throw _privateConstructorUsedError;
  String? get deviceInfo => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  String? get appVersion => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  LogType get logType => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;

  /// Serializes this TetbeeLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TetbeeLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TetbeeLogCopyWith<TetbeeLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TetbeeLogCopyWith<$Res> {
  factory $TetbeeLogCopyWith(TetbeeLog value, $Res Function(TetbeeLog) then) =
      _$TetbeeLogCopyWithImpl<$Res, TetbeeLog>;
  @useResult
  $Res call({
    String? id,
    String dataPath,
    String? workPlaceId,
    String? userId,
    Map<String, dynamic>? dataSnapshot,
    String? deviceInfo,
    String? message,
    String? platform,
    String? appVersion,
    int? statusCode,
    LogType logType,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
  });
}

/// @nodoc
class _$TetbeeLogCopyWithImpl<$Res, $Val extends TetbeeLog>
    implements $TetbeeLogCopyWith<$Res> {
  _$TetbeeLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TetbeeLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dataPath = null,
    Object? workPlaceId = freezed,
    Object? userId = freezed,
    Object? dataSnapshot = freezed,
    Object? deviceInfo = freezed,
    Object? message = freezed,
    Object? platform = freezed,
    Object? appVersion = freezed,
    Object? statusCode = freezed,
    Object? logType = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            dataPath:
                null == dataPath
                    ? _value.dataPath
                    : dataPath // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceId:
                freezed == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String?,
            userId:
                freezed == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String?,
            dataSnapshot:
                freezed == dataSnapshot
                    ? _value.dataSnapshot
                    : dataSnapshot // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            deviceInfo:
                freezed == deviceInfo
                    ? _value.deviceInfo
                    : deviceInfo // ignore: cast_nullable_to_non_nullable
                        as String?,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
            platform:
                freezed == platform
                    ? _value.platform
                    : platform // ignore: cast_nullable_to_non_nullable
                        as String?,
            appVersion:
                freezed == appVersion
                    ? _value.appVersion
                    : appVersion // ignore: cast_nullable_to_non_nullable
                        as String?,
            statusCode:
                freezed == statusCode
                    ? _value.statusCode
                    : statusCode // ignore: cast_nullable_to_non_nullable
                        as int?,
            logType:
                null == logType
                    ? _value.logType
                    : logType // ignore: cast_nullable_to_non_nullable
                        as LogType,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TetbeeLogImplCopyWith<$Res>
    implements $TetbeeLogCopyWith<$Res> {
  factory _$$TetbeeLogImplCopyWith(
    _$TetbeeLogImpl value,
    $Res Function(_$TetbeeLogImpl) then,
  ) = __$$TetbeeLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String dataPath,
    String? workPlaceId,
    String? userId,
    Map<String, dynamic>? dataSnapshot,
    String? deviceInfo,
    String? message,
    String? platform,
    String? appVersion,
    int? statusCode,
    LogType logType,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
  });
}

/// @nodoc
class __$$TetbeeLogImplCopyWithImpl<$Res>
    extends _$TetbeeLogCopyWithImpl<$Res, _$TetbeeLogImpl>
    implements _$$TetbeeLogImplCopyWith<$Res> {
  __$$TetbeeLogImplCopyWithImpl(
    _$TetbeeLogImpl _value,
    $Res Function(_$TetbeeLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TetbeeLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dataPath = null,
    Object? workPlaceId = freezed,
    Object? userId = freezed,
    Object? dataSnapshot = freezed,
    Object? deviceInfo = freezed,
    Object? message = freezed,
    Object? platform = freezed,
    Object? appVersion = freezed,
    Object? statusCode = freezed,
    Object? logType = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
  }) {
    return _then(
      _$TetbeeLogImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        dataPath:
            null == dataPath
                ? _value.dataPath
                : dataPath // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceId:
            freezed == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String?,
        userId:
            freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String?,
        dataSnapshot:
            freezed == dataSnapshot
                ? _value._dataSnapshot
                : dataSnapshot // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        deviceInfo:
            freezed == deviceInfo
                ? _value.deviceInfo
                : deviceInfo // ignore: cast_nullable_to_non_nullable
                    as String?,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
        platform:
            freezed == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                    as String?,
        appVersion:
            freezed == appVersion
                ? _value.appVersion
                : appVersion // ignore: cast_nullable_to_non_nullable
                    as String?,
        statusCode:
            freezed == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                    as int?,
        logType:
            null == logType
                ? _value.logType
                : logType // ignore: cast_nullable_to_non_nullable
                    as LogType,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TetbeeLogImpl implements _TetbeeLog {
  const _$TetbeeLogImpl({
    this.id,
    required this.dataPath,
    this.workPlaceId,
    this.userId,
    final Map<String, dynamic>? dataSnapshot,
    this.deviceInfo,
    this.message,
    this.platform,
    this.appVersion,
    this.statusCode,
    required this.logType,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
  }) : _dataSnapshot = dataSnapshot;

  factory _$TetbeeLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$TetbeeLogImplFromJson(json);

  @override
  final String? id;
  @override
  final String dataPath;
  @override
  final String? workPlaceId;
  @override
  final String? userId;
  final Map<String, dynamic>? _dataSnapshot;
  @override
  Map<String, dynamic>? get dataSnapshot {
    final value = _dataSnapshot;
    if (value == null) return null;
    if (_dataSnapshot is EqualUnmodifiableMapView) return _dataSnapshot;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? deviceInfo;
  @override
  final String? message;
  @override
  final String? platform;
  @override
  final String? appVersion;
  @override
  final int? statusCode;
  @override
  final LogType logType;
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
  String toString() {
    return 'TetbeeLog(id: $id, dataPath: $dataPath, workPlaceId: $workPlaceId, userId: $userId, dataSnapshot: $dataSnapshot, deviceInfo: $deviceInfo, message: $message, platform: $platform, appVersion: $appVersion, statusCode: $statusCode, logType: $logType, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TetbeeLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dataPath, dataPath) ||
                other.dataPath == dataPath) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._dataSnapshot,
              _dataSnapshot,
            ) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.logType, logType) || other.logType == logType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    dataPath,
    workPlaceId,
    userId,
    const DeepCollectionEquality().hash(_dataSnapshot),
    deviceInfo,
    message,
    platform,
    appVersion,
    statusCode,
    logType,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
  );

  /// Create a copy of TetbeeLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TetbeeLogImplCopyWith<_$TetbeeLogImpl> get copyWith =>
      __$$TetbeeLogImplCopyWithImpl<_$TetbeeLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TetbeeLogImplToJson(this);
  }
}

abstract class _TetbeeLog implements TetbeeLog {
  const factory _TetbeeLog({
    final String? id,
    required final String dataPath,
    final String? workPlaceId,
    final String? userId,
    final Map<String, dynamic>? dataSnapshot,
    final String? deviceInfo,
    final String? message,
    final String? platform,
    final String? appVersion,
    final int? statusCode,
    required final LogType logType,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
  }) = _$TetbeeLogImpl;

  factory _TetbeeLog.fromJson(Map<String, dynamic> json) =
      _$TetbeeLogImpl.fromJson;

  @override
  String? get id;
  @override
  String get dataPath;
  @override
  String? get workPlaceId;
  @override
  String? get userId;
  @override
  Map<String, dynamic>? get dataSnapshot;
  @override
  String? get deviceInfo;
  @override
  String? get message;
  @override
  String? get platform;
  @override
  String? get appVersion;
  @override
  int? get statusCode;
  @override
  LogType get logType;
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

  /// Create a copy of TetbeeLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TetbeeLogImplCopyWith<_$TetbeeLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
