// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_place_opening_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkPlaceOpeningTime _$WorkPlaceOpeningTimeFromJson(Map<String, dynamic> json) {
  return _WorkPlaceOpeningTime.fromJson(json);
}

/// @nodoc
mixin _$WorkPlaceOpeningTime {
  int get weekDay => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get startTime => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get endTime => throw _privateConstructorUsedError;

  /// Serializes this WorkPlaceOpeningTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkPlaceOpeningTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkPlaceOpeningTimeCopyWith<WorkPlaceOpeningTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPlaceOpeningTimeCopyWith<$Res> {
  factory $WorkPlaceOpeningTimeCopyWith(
    WorkPlaceOpeningTime value,
    $Res Function(WorkPlaceOpeningTime) then,
  ) = _$WorkPlaceOpeningTimeCopyWithImpl<$Res, WorkPlaceOpeningTime>;
  @useResult
  $Res call({
    int weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endTime,
  });
}

/// @nodoc
class _$WorkPlaceOpeningTimeCopyWithImpl<
  $Res,
  $Val extends WorkPlaceOpeningTime
>
    implements $WorkPlaceOpeningTimeCopyWith<$Res> {
  _$WorkPlaceOpeningTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkPlaceOpeningTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            weekDay:
                null == weekDay
                    ? _value.weekDay
                    : weekDay // ignore: cast_nullable_to_non_nullable
                        as int,
            startTime:
                freezed == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            endTime:
                freezed == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkPlaceOpeningTimeImplCopyWith<$Res>
    implements $WorkPlaceOpeningTimeCopyWith<$Res> {
  factory _$$WorkPlaceOpeningTimeImplCopyWith(
    _$WorkPlaceOpeningTimeImpl value,
    $Res Function(_$WorkPlaceOpeningTimeImpl) then,
  ) = __$$WorkPlaceOpeningTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endTime,
  });
}

/// @nodoc
class __$$WorkPlaceOpeningTimeImplCopyWithImpl<$Res>
    extends _$WorkPlaceOpeningTimeCopyWithImpl<$Res, _$WorkPlaceOpeningTimeImpl>
    implements _$$WorkPlaceOpeningTimeImplCopyWith<$Res> {
  __$$WorkPlaceOpeningTimeImplCopyWithImpl(
    _$WorkPlaceOpeningTimeImpl _value,
    $Res Function(_$WorkPlaceOpeningTimeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkPlaceOpeningTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(
      _$WorkPlaceOpeningTimeImpl(
        weekDay:
            null == weekDay
                ? _value.weekDay
                : weekDay // ignore: cast_nullable_to_non_nullable
                    as int,
        startTime:
            freezed == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        endTime:
            freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkPlaceOpeningTimeImpl implements _WorkPlaceOpeningTime {
  const _$WorkPlaceOpeningTimeImpl({
    required this.weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.endTime,
  });

  factory _$WorkPlaceOpeningTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkPlaceOpeningTimeImplFromJson(json);

  @override
  final int weekDay;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? startTime;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? endTime;

  @override
  String toString() {
    return 'WorkPlaceOpeningTime(weekDay: $weekDay, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkPlaceOpeningTimeImpl &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weekDay, startTime, endTime);

  /// Create a copy of WorkPlaceOpeningTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkPlaceOpeningTimeImplCopyWith<_$WorkPlaceOpeningTimeImpl>
  get copyWith =>
      __$$WorkPlaceOpeningTimeImplCopyWithImpl<_$WorkPlaceOpeningTimeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkPlaceOpeningTimeImplToJson(this);
  }
}

abstract class _WorkPlaceOpeningTime implements WorkPlaceOpeningTime {
  const factory _WorkPlaceOpeningTime({
    required final int weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? endTime,
  }) = _$WorkPlaceOpeningTimeImpl;

  factory _WorkPlaceOpeningTime.fromJson(Map<String, dynamic> json) =
      _$WorkPlaceOpeningTimeImpl.fromJson;

  @override
  int get weekDay;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get startTime;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get endTime;

  /// Create a copy of WorkPlaceOpeningTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkPlaceOpeningTimeImplCopyWith<_$WorkPlaceOpeningTimeImpl>
  get copyWith => throw _privateConstructorUsedError;
}
