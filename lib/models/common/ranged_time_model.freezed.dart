// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranged_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RangedTimeModel _$RangedTimeModelFromJson(Map<String, dynamic> json) {
  return _RangedTimeModel.fromJson(json);
}

/// @nodoc
mixin _$RangedTimeModel {
  int? get weekDay => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get startTime => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get endTime => throw _privateConstructorUsedError;

  /// Serializes this RangedTimeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RangedTimeModelCopyWith<RangedTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangedTimeModelCopyWith<$Res> {
  factory $RangedTimeModelCopyWith(
    RangedTimeModel value,
    $Res Function(RangedTimeModel) then,
  ) = _$RangedTimeModelCopyWithImpl<$Res, RangedTimeModel>;
  @useResult
  $Res call({
    int? weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endTime,
  });
}

/// @nodoc
class _$RangedTimeModelCopyWithImpl<$Res, $Val extends RangedTimeModel>
    implements $RangedTimeModelCopyWith<$Res> {
  _$RangedTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            weekDay:
                freezed == weekDay
                    ? _value.weekDay
                    : weekDay // ignore: cast_nullable_to_non_nullable
                        as int?,
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
abstract class _$$RangedTimeModelImplCopyWith<$Res>
    implements $RangedTimeModelCopyWith<$Res> {
  factory _$$RangedTimeModelImplCopyWith(
    _$RangedTimeModelImpl value,
    $Res Function(_$RangedTimeModelImpl) then,
  ) = __$$RangedTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endTime,
  });
}

/// @nodoc
class __$$RangedTimeModelImplCopyWithImpl<$Res>
    extends _$RangedTimeModelCopyWithImpl<$Res, _$RangedTimeModelImpl>
    implements _$$RangedTimeModelImplCopyWith<$Res> {
  __$$RangedTimeModelImplCopyWithImpl(
    _$RangedTimeModelImpl _value,
    $Res Function(_$RangedTimeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(
      _$RangedTimeModelImpl(
        weekDay:
            freezed == weekDay
                ? _value.weekDay
                : weekDay // ignore: cast_nullable_to_non_nullable
                    as int?,
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
class _$RangedTimeModelImpl implements _RangedTimeModel {
  const _$RangedTimeModelImpl({
    this.weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.endTime,
  });

  factory _$RangedTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RangedTimeModelImplFromJson(json);

  @override
  final int? weekDay;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? startTime;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? endTime;

  @override
  String toString() {
    return 'RangedTimeModel(weekDay: $weekDay, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangedTimeModelImpl &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weekDay, startTime, endTime);

  /// Create a copy of RangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RangedTimeModelImplCopyWith<_$RangedTimeModelImpl> get copyWith =>
      __$$RangedTimeModelImplCopyWithImpl<_$RangedTimeModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RangedTimeModelImplToJson(this);
  }
}

abstract class _RangedTimeModel implements RangedTimeModel {
  const factory _RangedTimeModel({
    final int? weekDay,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? startTime,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? endTime,
  }) = _$RangedTimeModelImpl;

  factory _RangedTimeModel.fromJson(Map<String, dynamic> json) =
      _$RangedTimeModelImpl.fromJson;

  @override
  int? get weekDay;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get startTime;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get endTime;

  /// Create a copy of RangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RangedTimeModelImplCopyWith<_$RangedTimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
