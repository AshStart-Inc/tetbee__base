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

PresetScheduleTime _$PresetScheduleTimeFromJson(Map<String, dynamic> json) {
  return _PresetScheduleTime.fromJson(json);
}

/// @nodoc
mixin _$PresetScheduleTime {
  int get ordinal => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;

  /// Serializes this PresetScheduleTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PresetScheduleTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresetScheduleTimeCopyWith<PresetScheduleTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresetScheduleTimeCopyWith<$Res> {
  factory $PresetScheduleTimeCopyWith(
    PresetScheduleTime value,
    $Res Function(PresetScheduleTime) then,
  ) = _$PresetScheduleTimeCopyWithImpl<$Res, PresetScheduleTime>;
  @useResult
  $Res call({int ordinal, String startTime, String? endTime});
}

/// @nodoc
class _$PresetScheduleTimeCopyWithImpl<$Res, $Val extends PresetScheduleTime>
    implements $PresetScheduleTimeCopyWith<$Res> {
  _$PresetScheduleTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresetScheduleTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordinal = null,
    Object? startTime = null,
    Object? endTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            ordinal:
                null == ordinal
                    ? _value.ordinal
                    : ordinal // ignore: cast_nullable_to_non_nullable
                        as int,
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as String,
            endTime:
                freezed == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PresetScheduleTimeImplCopyWith<$Res>
    implements $PresetScheduleTimeCopyWith<$Res> {
  factory _$$PresetScheduleTimeImplCopyWith(
    _$PresetScheduleTimeImpl value,
    $Res Function(_$PresetScheduleTimeImpl) then,
  ) = __$$PresetScheduleTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ordinal, String startTime, String? endTime});
}

/// @nodoc
class __$$PresetScheduleTimeImplCopyWithImpl<$Res>
    extends _$PresetScheduleTimeCopyWithImpl<$Res, _$PresetScheduleTimeImpl>
    implements _$$PresetScheduleTimeImplCopyWith<$Res> {
  __$$PresetScheduleTimeImplCopyWithImpl(
    _$PresetScheduleTimeImpl _value,
    $Res Function(_$PresetScheduleTimeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PresetScheduleTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordinal = null,
    Object? startTime = null,
    Object? endTime = freezed,
  }) {
    return _then(
      _$PresetScheduleTimeImpl(
        ordinal:
            null == ordinal
                ? _value.ordinal
                : ordinal // ignore: cast_nullable_to_non_nullable
                    as int,
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as String,
        endTime:
            freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PresetScheduleTimeImpl implements _PresetScheduleTime {
  const _$PresetScheduleTimeImpl({
    required this.ordinal,
    required this.startTime,
    this.endTime,
  });

  factory _$PresetScheduleTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PresetScheduleTimeImplFromJson(json);

  @override
  final int ordinal;
  @override
  final String startTime;
  @override
  final String? endTime;

  @override
  String toString() {
    return 'PresetScheduleTime(ordinal: $ordinal, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresetScheduleTimeImpl &&
            (identical(other.ordinal, ordinal) || other.ordinal == ordinal) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ordinal, startTime, endTime);

  /// Create a copy of PresetScheduleTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresetScheduleTimeImplCopyWith<_$PresetScheduleTimeImpl> get copyWith =>
      __$$PresetScheduleTimeImplCopyWithImpl<_$PresetScheduleTimeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PresetScheduleTimeImplToJson(this);
  }
}

abstract class _PresetScheduleTime implements PresetScheduleTime {
  const factory _PresetScheduleTime({
    required final int ordinal,
    required final String startTime,
    final String? endTime,
  }) = _$PresetScheduleTimeImpl;

  factory _PresetScheduleTime.fromJson(Map<String, dynamic> json) =
      _$PresetScheduleTimeImpl.fromJson;

  @override
  int get ordinal;
  @override
  String get startTime;
  @override
  String? get endTime;

  /// Create a copy of PresetScheduleTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresetScheduleTimeImplCopyWith<_$PresetScheduleTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
