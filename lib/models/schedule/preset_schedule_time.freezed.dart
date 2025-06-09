// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset_schedule_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SchedulePresetTime _$SchedulePresetTimeFromJson(Map<String, dynamic> json) {
  return _SchedulePresetTime.fromJson(json);
}

/// @nodoc
mixin _$SchedulePresetTime {
  int get ordinal => throw _privateConstructorUsedError;
  RangedTimeModel get timeRange => throw _privateConstructorUsedError;

  /// Serializes this SchedulePresetTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SchedulePresetTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchedulePresetTimeCopyWith<SchedulePresetTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePresetTimeCopyWith<$Res> {
  factory $SchedulePresetTimeCopyWith(
    SchedulePresetTime value,
    $Res Function(SchedulePresetTime) then,
  ) = _$SchedulePresetTimeCopyWithImpl<$Res, SchedulePresetTime>;
  @useResult
  $Res call({int ordinal, RangedTimeModel timeRange});

  $RangedTimeModelCopyWith<$Res> get timeRange;
}

/// @nodoc
class _$SchedulePresetTimeCopyWithImpl<$Res, $Val extends SchedulePresetTime>
    implements $SchedulePresetTimeCopyWith<$Res> {
  _$SchedulePresetTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchedulePresetTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ordinal = null, Object? timeRange = null}) {
    return _then(
      _value.copyWith(
            ordinal:
                null == ordinal
                    ? _value.ordinal
                    : ordinal // ignore: cast_nullable_to_non_nullable
                        as int,
            timeRange:
                null == timeRange
                    ? _value.timeRange
                    : timeRange // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel,
          )
          as $Val,
    );
  }

  /// Create a copy of SchedulePresetTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res> get timeRange {
    return $RangedTimeModelCopyWith<$Res>(_value.timeRange, (value) {
      return _then(_value.copyWith(timeRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchedulePresetTimeImplCopyWith<$Res>
    implements $SchedulePresetTimeCopyWith<$Res> {
  factory _$$SchedulePresetTimeImplCopyWith(
    _$SchedulePresetTimeImpl value,
    $Res Function(_$SchedulePresetTimeImpl) then,
  ) = __$$SchedulePresetTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ordinal, RangedTimeModel timeRange});

  @override
  $RangedTimeModelCopyWith<$Res> get timeRange;
}

/// @nodoc
class __$$SchedulePresetTimeImplCopyWithImpl<$Res>
    extends _$SchedulePresetTimeCopyWithImpl<$Res, _$SchedulePresetTimeImpl>
    implements _$$SchedulePresetTimeImplCopyWith<$Res> {
  __$$SchedulePresetTimeImplCopyWithImpl(
    _$SchedulePresetTimeImpl _value,
    $Res Function(_$SchedulePresetTimeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SchedulePresetTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ordinal = null, Object? timeRange = null}) {
    return _then(
      _$SchedulePresetTimeImpl(
        ordinal:
            null == ordinal
                ? _value.ordinal
                : ordinal // ignore: cast_nullable_to_non_nullable
                    as int,
        timeRange:
            null == timeRange
                ? _value.timeRange
                : timeRange // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SchedulePresetTimeImpl implements _SchedulePresetTime {
  const _$SchedulePresetTimeImpl({
    required this.ordinal,
    required this.timeRange,
  });

  factory _$SchedulePresetTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchedulePresetTimeImplFromJson(json);

  @override
  final int ordinal;
  @override
  final RangedTimeModel timeRange;

  @override
  String toString() {
    return 'SchedulePresetTime(ordinal: $ordinal, timeRange: $timeRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchedulePresetTimeImpl &&
            (identical(other.ordinal, ordinal) || other.ordinal == ordinal) &&
            (identical(other.timeRange, timeRange) ||
                other.timeRange == timeRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ordinal, timeRange);

  /// Create a copy of SchedulePresetTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchedulePresetTimeImplCopyWith<_$SchedulePresetTimeImpl> get copyWith =>
      __$$SchedulePresetTimeImplCopyWithImpl<_$SchedulePresetTimeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SchedulePresetTimeImplToJson(this);
  }
}

abstract class _SchedulePresetTime implements SchedulePresetTime {
  const factory _SchedulePresetTime({
    required final int ordinal,
    required final RangedTimeModel timeRange,
  }) = _$SchedulePresetTimeImpl;

  factory _SchedulePresetTime.fromJson(Map<String, dynamic> json) =
      _$SchedulePresetTimeImpl.fromJson;

  @override
  int get ordinal;
  @override
  RangedTimeModel get timeRange;

  /// Create a copy of SchedulePresetTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchedulePresetTimeImplCopyWith<_$SchedulePresetTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
