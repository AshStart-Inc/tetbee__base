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

WorkPlaceSchedulePresetTimes _$WorkPlaceSchedulePresetTimesFromJson(
  Map<String, dynamic> json,
) {
  return _WorkPlaceSchedulePresetTimes.fromJson(json);
}

/// @nodoc
mixin _$WorkPlaceSchedulePresetTimes {
  String? get id => throw _privateConstructorUsedError;
  List<SchedulePresetTime>? get presetTimes =>
      throw _privateConstructorUsedError;

  /// Serializes this WorkPlaceSchedulePresetTimes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkPlaceSchedulePresetTimes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkPlaceSchedulePresetTimesCopyWith<WorkPlaceSchedulePresetTimes>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPlaceSchedulePresetTimesCopyWith<$Res> {
  factory $WorkPlaceSchedulePresetTimesCopyWith(
    WorkPlaceSchedulePresetTimes value,
    $Res Function(WorkPlaceSchedulePresetTimes) then,
  ) =
      _$WorkPlaceSchedulePresetTimesCopyWithImpl<
        $Res,
        WorkPlaceSchedulePresetTimes
      >;
  @useResult
  $Res call({String? id, List<SchedulePresetTime>? presetTimes});
}

/// @nodoc
class _$WorkPlaceSchedulePresetTimesCopyWithImpl<
  $Res,
  $Val extends WorkPlaceSchedulePresetTimes
>
    implements $WorkPlaceSchedulePresetTimesCopyWith<$Res> {
  _$WorkPlaceSchedulePresetTimesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkPlaceSchedulePresetTimes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? presetTimes = freezed}) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            presetTimes:
                freezed == presetTimes
                    ? _value.presetTimes
                    : presetTimes // ignore: cast_nullable_to_non_nullable
                        as List<SchedulePresetTime>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkPlaceSchedulePresetTimesImplCopyWith<$Res>
    implements $WorkPlaceSchedulePresetTimesCopyWith<$Res> {
  factory _$$WorkPlaceSchedulePresetTimesImplCopyWith(
    _$WorkPlaceSchedulePresetTimesImpl value,
    $Res Function(_$WorkPlaceSchedulePresetTimesImpl) then,
  ) = __$$WorkPlaceSchedulePresetTimesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, List<SchedulePresetTime>? presetTimes});
}

/// @nodoc
class __$$WorkPlaceSchedulePresetTimesImplCopyWithImpl<$Res>
    extends
        _$WorkPlaceSchedulePresetTimesCopyWithImpl<
          $Res,
          _$WorkPlaceSchedulePresetTimesImpl
        >
    implements _$$WorkPlaceSchedulePresetTimesImplCopyWith<$Res> {
  __$$WorkPlaceSchedulePresetTimesImplCopyWithImpl(
    _$WorkPlaceSchedulePresetTimesImpl _value,
    $Res Function(_$WorkPlaceSchedulePresetTimesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkPlaceSchedulePresetTimes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? presetTimes = freezed}) {
    return _then(
      _$WorkPlaceSchedulePresetTimesImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        presetTimes:
            freezed == presetTimes
                ? _value._presetTimes
                : presetTimes // ignore: cast_nullable_to_non_nullable
                    as List<SchedulePresetTime>?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorkPlaceSchedulePresetTimesImpl
    implements _WorkPlaceSchedulePresetTimes {
  const _$WorkPlaceSchedulePresetTimesImpl({
    this.id,
    final List<SchedulePresetTime>? presetTimes,
  }) : _presetTimes = presetTimes;

  factory _$WorkPlaceSchedulePresetTimesImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$WorkPlaceSchedulePresetTimesImplFromJson(json);

  @override
  final String? id;
  final List<SchedulePresetTime>? _presetTimes;
  @override
  List<SchedulePresetTime>? get presetTimes {
    final value = _presetTimes;
    if (value == null) return null;
    if (_presetTimes is EqualUnmodifiableListView) return _presetTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkPlaceSchedulePresetTimes(id: $id, presetTimes: $presetTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkPlaceSchedulePresetTimesImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(
              other._presetTimes,
              _presetTimes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_presetTimes),
  );

  /// Create a copy of WorkPlaceSchedulePresetTimes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkPlaceSchedulePresetTimesImplCopyWith<
    _$WorkPlaceSchedulePresetTimesImpl
  >
  get copyWith => __$$WorkPlaceSchedulePresetTimesImplCopyWithImpl<
    _$WorkPlaceSchedulePresetTimesImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkPlaceSchedulePresetTimesImplToJson(this);
  }
}

abstract class _WorkPlaceSchedulePresetTimes
    implements WorkPlaceSchedulePresetTimes {
  const factory _WorkPlaceSchedulePresetTimes({
    final String? id,
    final List<SchedulePresetTime>? presetTimes,
  }) = _$WorkPlaceSchedulePresetTimesImpl;

  factory _WorkPlaceSchedulePresetTimes.fromJson(Map<String, dynamic> json) =
      _$WorkPlaceSchedulePresetTimesImpl.fromJson;

  @override
  String? get id;
  @override
  List<SchedulePresetTime>? get presetTimes;

  /// Create a copy of WorkPlaceSchedulePresetTimes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkPlaceSchedulePresetTimesImplCopyWith<
    _$WorkPlaceSchedulePresetTimesImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
