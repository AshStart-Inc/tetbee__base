// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserSchedule _$UserScheduleFromJson(Map<String, dynamic> json) {
  return _UserSchedule.fromJson(json);
}

/// @nodoc
mixin _$UserSchedule {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get scheduleContainerId => throw _privateConstructorUsedError;
  String? get workPlaceId => throw _privateConstructorUsedError;
  int? get weekday => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  String get scheduleDate => throw _privateConstructorUsedError;
  Map<String, DailySchedule> get schedules =>
      throw _privateConstructorUsedError;

  /// Serializes this UserSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserScheduleCopyWith<UserSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserScheduleCopyWith<$Res> {
  factory $UserScheduleCopyWith(
    UserSchedule value,
    $Res Function(UserSchedule) then,
  ) = _$UserScheduleCopyWithImpl<$Res, UserSchedule>;
  @useResult
  $Res call({
    String? id,
    String? userId,
    String? scheduleContainerId,
    String? workPlaceId,
    int? weekday,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    String scheduleDate,
    Map<String, DailySchedule> schedules,
  });
}

/// @nodoc
class _$UserScheduleCopyWithImpl<$Res, $Val extends UserSchedule>
    implements $UserScheduleCopyWith<$Res> {
  _$UserScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? scheduleContainerId = freezed,
    Object? workPlaceId = freezed,
    Object? weekday = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? scheduleDate = null,
    Object? schedules = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            userId:
                freezed == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String?,
            scheduleContainerId:
                freezed == scheduleContainerId
                    ? _value.scheduleContainerId
                    : scheduleContainerId // ignore: cast_nullable_to_non_nullable
                        as String?,
            workPlaceId:
                freezed == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String?,
            weekday:
                freezed == weekday
                    ? _value.weekday
                    : weekday // ignore: cast_nullable_to_non_nullable
                        as int?,
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
            scheduleDate:
                null == scheduleDate
                    ? _value.scheduleDate
                    : scheduleDate // ignore: cast_nullable_to_non_nullable
                        as String,
            schedules:
                null == schedules
                    ? _value.schedules
                    : schedules // ignore: cast_nullable_to_non_nullable
                        as Map<String, DailySchedule>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserScheduleImplCopyWith<$Res>
    implements $UserScheduleCopyWith<$Res> {
  factory _$$UserScheduleImplCopyWith(
    _$UserScheduleImpl value,
    $Res Function(_$UserScheduleImpl) then,
  ) = __$$UserScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? userId,
    String? scheduleContainerId,
    String? workPlaceId,
    int? weekday,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    String scheduleDate,
    Map<String, DailySchedule> schedules,
  });
}

/// @nodoc
class __$$UserScheduleImplCopyWithImpl<$Res>
    extends _$UserScheduleCopyWithImpl<$Res, _$UserScheduleImpl>
    implements _$$UserScheduleImplCopyWith<$Res> {
  __$$UserScheduleImplCopyWithImpl(
    _$UserScheduleImpl _value,
    $Res Function(_$UserScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? scheduleContainerId = freezed,
    Object? workPlaceId = freezed,
    Object? weekday = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? scheduleDate = null,
    Object? schedules = null,
  }) {
    return _then(
      _$UserScheduleImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        userId:
            freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String?,
        scheduleContainerId:
            freezed == scheduleContainerId
                ? _value.scheduleContainerId
                : scheduleContainerId // ignore: cast_nullable_to_non_nullable
                    as String?,
        workPlaceId:
            freezed == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String?,
        weekday:
            freezed == weekday
                ? _value.weekday
                : weekday // ignore: cast_nullable_to_non_nullable
                    as int?,
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
        scheduleDate:
            null == scheduleDate
                ? _value.scheduleDate
                : scheduleDate // ignore: cast_nullable_to_non_nullable
                    as String,
        schedules:
            null == schedules
                ? _value._schedules
                : schedules // ignore: cast_nullable_to_non_nullable
                    as Map<String, DailySchedule>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserScheduleImpl implements _UserSchedule {
  const _$UserScheduleImpl({
    this.id,
    this.userId,
    this.scheduleContainerId,
    this.workPlaceId,
    this.weekday,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    this.scheduleDate = '',
    final Map<String, DailySchedule> schedules = const {},
  }) : _schedules = schedules;

  factory _$UserScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserScheduleImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? scheduleContainerId;
  @override
  final String? workPlaceId;
  @override
  final int? weekday;
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
  @JsonKey()
  final String scheduleDate;
  final Map<String, DailySchedule> _schedules;
  @override
  @JsonKey()
  Map<String, DailySchedule> get schedules {
    if (_schedules is EqualUnmodifiableMapView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_schedules);
  }

  @override
  String toString() {
    return 'UserSchedule(id: $id, userId: $userId, scheduleContainerId: $scheduleContainerId, workPlaceId: $workPlaceId, weekday: $weekday, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, scheduleDate: $scheduleDate, schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.scheduleContainerId, scheduleContainerId) ||
                other.scheduleContainerId == scheduleContainerId) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.scheduleDate, scheduleDate) ||
                other.scheduleDate == scheduleDate) &&
            const DeepCollectionEquality().equals(
              other._schedules,
              _schedules,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    scheduleContainerId,
    workPlaceId,
    weekday,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    scheduleDate,
    const DeepCollectionEquality().hash(_schedules),
  );

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserScheduleImplCopyWith<_$UserScheduleImpl> get copyWith =>
      __$$UserScheduleImplCopyWithImpl<_$UserScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserScheduleImplToJson(this);
  }
}

abstract class _UserSchedule implements UserSchedule {
  const factory _UserSchedule({
    final String? id,
    final String? userId,
    final String? scheduleContainerId,
    final String? workPlaceId,
    final int? weekday,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    final String scheduleDate,
    final Map<String, DailySchedule> schedules,
  }) = _$UserScheduleImpl;

  factory _UserSchedule.fromJson(Map<String, dynamic> json) =
      _$UserScheduleImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get scheduleContainerId;
  @override
  String? get workPlaceId;
  @override
  int? get weekday;
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
  String get scheduleDate;
  @override
  Map<String, DailySchedule> get schedules;

  /// Create a copy of UserSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserScheduleImplCopyWith<_$UserScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
