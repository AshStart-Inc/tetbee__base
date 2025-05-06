// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyAvailability _$DailyAvailabilityFromJson(Map<String, dynamic> json) {
  return _DailyAvailability.fromJson(json);
}

/// @nodoc
mixin _$DailyAvailability {
  String get userId => throw _privateConstructorUsedError;
  int get weekDay => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  bool? get canWorkButNotPreferToWork => throw _privateConstructorUsedError;
  RangedTimeModel get time => throw _privateConstructorUsedError;

  /// Serializes this DailyAvailability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyAvailabilityCopyWith<DailyAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyAvailabilityCopyWith<$Res> {
  factory $DailyAvailabilityCopyWith(
    DailyAvailability value,
    $Res Function(DailyAvailability) then,
  ) = _$DailyAvailabilityCopyWithImpl<$Res, DailyAvailability>;
  @useResult
  $Res call({
    String userId,
    int weekDay,
    String? comment,
    bool? canWorkButNotPreferToWork,
    RangedTimeModel time,
  });

  $RangedTimeModelCopyWith<$Res> get time;
}

/// @nodoc
class _$DailyAvailabilityCopyWithImpl<$Res, $Val extends DailyAvailability>
    implements $DailyAvailabilityCopyWith<$Res> {
  _$DailyAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weekDay = null,
    Object? comment = freezed,
    Object? canWorkButNotPreferToWork = freezed,
    Object? time = null,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            weekDay:
                null == weekDay
                    ? _value.weekDay
                    : weekDay // ignore: cast_nullable_to_non_nullable
                        as int,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            canWorkButNotPreferToWork:
                freezed == canWorkButNotPreferToWork
                    ? _value.canWorkButNotPreferToWork
                    : canWorkButNotPreferToWork // ignore: cast_nullable_to_non_nullable
                        as bool?,
            time:
                null == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel,
          )
          as $Val,
    );
  }

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res> get time {
    return $RangedTimeModelCopyWith<$Res>(_value.time, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyAvailabilityImplCopyWith<$Res>
    implements $DailyAvailabilityCopyWith<$Res> {
  factory _$$DailyAvailabilityImplCopyWith(
    _$DailyAvailabilityImpl value,
    $Res Function(_$DailyAvailabilityImpl) then,
  ) = __$$DailyAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int weekDay,
    String? comment,
    bool? canWorkButNotPreferToWork,
    RangedTimeModel time,
  });

  @override
  $RangedTimeModelCopyWith<$Res> get time;
}

/// @nodoc
class __$$DailyAvailabilityImplCopyWithImpl<$Res>
    extends _$DailyAvailabilityCopyWithImpl<$Res, _$DailyAvailabilityImpl>
    implements _$$DailyAvailabilityImplCopyWith<$Res> {
  __$$DailyAvailabilityImplCopyWithImpl(
    _$DailyAvailabilityImpl _value,
    $Res Function(_$DailyAvailabilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weekDay = null,
    Object? comment = freezed,
    Object? canWorkButNotPreferToWork = freezed,
    Object? time = null,
  }) {
    return _then(
      _$DailyAvailabilityImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        weekDay:
            null == weekDay
                ? _value.weekDay
                : weekDay // ignore: cast_nullable_to_non_nullable
                    as int,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        canWorkButNotPreferToWork:
            freezed == canWorkButNotPreferToWork
                ? _value.canWorkButNotPreferToWork
                : canWorkButNotPreferToWork // ignore: cast_nullable_to_non_nullable
                    as bool?,
        time:
            null == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyAvailabilityImpl implements _DailyAvailability {
  const _$DailyAvailabilityImpl({
    required this.userId,
    required this.weekDay,
    this.comment,
    this.canWorkButNotPreferToWork = false,
    required this.time,
  });

  factory _$DailyAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyAvailabilityImplFromJson(json);

  @override
  final String userId;
  @override
  final int weekDay;
  @override
  final String? comment;
  @override
  @JsonKey()
  final bool? canWorkButNotPreferToWork;
  @override
  final RangedTimeModel time;

  @override
  String toString() {
    return 'DailyAvailability(userId: $userId, weekDay: $weekDay, comment: $comment, canWorkButNotPreferToWork: $canWorkButNotPreferToWork, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyAvailabilityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(
                  other.canWorkButNotPreferToWork,
                  canWorkButNotPreferToWork,
                ) ||
                other.canWorkButNotPreferToWork == canWorkButNotPreferToWork) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    weekDay,
    comment,
    canWorkButNotPreferToWork,
    time,
  );

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyAvailabilityImplCopyWith<_$DailyAvailabilityImpl> get copyWith =>
      __$$DailyAvailabilityImplCopyWithImpl<_$DailyAvailabilityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyAvailabilityImplToJson(this);
  }
}

abstract class _DailyAvailability implements DailyAvailability {
  const factory _DailyAvailability({
    required final String userId,
    required final int weekDay,
    final String? comment,
    final bool? canWorkButNotPreferToWork,
    required final RangedTimeModel time,
  }) = _$DailyAvailabilityImpl;

  factory _DailyAvailability.fromJson(Map<String, dynamic> json) =
      _$DailyAvailabilityImpl.fromJson;

  @override
  String get userId;
  @override
  int get weekDay;
  @override
  String? get comment;
  @override
  bool? get canWorkButNotPreferToWork;
  @override
  RangedTimeModel get time;

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyAvailabilityImplCopyWith<_$DailyAvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
