// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_place_preset_schedule_times.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkPlaceScheduleTimes _$WorkPlaceScheduleTimesFromJson(
  Map<String, dynamic> json,
) {
  return _WorkPlaceScheduleTimes.fromJson(json);
}

/// @nodoc
mixin _$WorkPlaceScheduleTimes {
  List<PresetScheduleTime>? get presetTimes =>
      throw _privateConstructorUsedError;

  /// Serializes this WorkPlaceScheduleTimes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkPlaceScheduleTimes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkPlaceScheduleTimesCopyWith<WorkPlaceScheduleTimes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPlaceScheduleTimesCopyWith<$Res> {
  factory $WorkPlaceScheduleTimesCopyWith(
    WorkPlaceScheduleTimes value,
    $Res Function(WorkPlaceScheduleTimes) then,
  ) = _$WorkPlaceScheduleTimesCopyWithImpl<$Res, WorkPlaceScheduleTimes>;
  @useResult
  $Res call({List<PresetScheduleTime>? presetTimes});
}

/// @nodoc
class _$WorkPlaceScheduleTimesCopyWithImpl<
  $Res,
  $Val extends WorkPlaceScheduleTimes
>
    implements $WorkPlaceScheduleTimesCopyWith<$Res> {
  _$WorkPlaceScheduleTimesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkPlaceScheduleTimes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? presetTimes = freezed}) {
    return _then(
      _value.copyWith(
            presetTimes:
                freezed == presetTimes
                    ? _value.presetTimes
                    : presetTimes // ignore: cast_nullable_to_non_nullable
                        as List<PresetScheduleTime>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkPlaceScheduleTimesImplCopyWith<$Res>
    implements $WorkPlaceScheduleTimesCopyWith<$Res> {
  factory _$$WorkPlaceScheduleTimesImplCopyWith(
    _$WorkPlaceScheduleTimesImpl value,
    $Res Function(_$WorkPlaceScheduleTimesImpl) then,
  ) = __$$WorkPlaceScheduleTimesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PresetScheduleTime>? presetTimes});
}

/// @nodoc
class __$$WorkPlaceScheduleTimesImplCopyWithImpl<$Res>
    extends
        _$WorkPlaceScheduleTimesCopyWithImpl<$Res, _$WorkPlaceScheduleTimesImpl>
    implements _$$WorkPlaceScheduleTimesImplCopyWith<$Res> {
  __$$WorkPlaceScheduleTimesImplCopyWithImpl(
    _$WorkPlaceScheduleTimesImpl _value,
    $Res Function(_$WorkPlaceScheduleTimesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkPlaceScheduleTimes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? presetTimes = freezed}) {
    return _then(
      _$WorkPlaceScheduleTimesImpl(
        presetTimes:
            freezed == presetTimes
                ? _value._presetTimes
                : presetTimes // ignore: cast_nullable_to_non_nullable
                    as List<PresetScheduleTime>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkPlaceScheduleTimesImpl implements _WorkPlaceScheduleTimes {
  const _$WorkPlaceScheduleTimesImpl({
    final List<PresetScheduleTime>? presetTimes,
  }) : _presetTimes = presetTimes;

  factory _$WorkPlaceScheduleTimesImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkPlaceScheduleTimesImplFromJson(json);

  final List<PresetScheduleTime>? _presetTimes;
  @override
  List<PresetScheduleTime>? get presetTimes {
    final value = _presetTimes;
    if (value == null) return null;
    if (_presetTimes is EqualUnmodifiableListView) return _presetTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkPlaceScheduleTimes(presetTimes: $presetTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkPlaceScheduleTimesImpl &&
            const DeepCollectionEquality().equals(
              other._presetTimes,
              _presetTimes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_presetTimes),
  );

  /// Create a copy of WorkPlaceScheduleTimes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkPlaceScheduleTimesImplCopyWith<_$WorkPlaceScheduleTimesImpl>
  get copyWith =>
      __$$WorkPlaceScheduleTimesImplCopyWithImpl<_$WorkPlaceScheduleTimesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkPlaceScheduleTimesImplToJson(this);
  }
}

abstract class _WorkPlaceScheduleTimes implements WorkPlaceScheduleTimes {
  const factory _WorkPlaceScheduleTimes({
    final List<PresetScheduleTime>? presetTimes,
  }) = _$WorkPlaceScheduleTimesImpl;

  factory _WorkPlaceScheduleTimes.fromJson(Map<String, dynamic> json) =
      _$WorkPlaceScheduleTimesImpl.fromJson;

  @override
  List<PresetScheduleTime>? get presetTimes;

  /// Create a copy of WorkPlaceScheduleTimes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkPlaceScheduleTimesImplCopyWith<_$WorkPlaceScheduleTimesImpl>
  get copyWith => throw _privateConstructorUsedError;
}
