// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updated_ranged_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdatedRangedTimeModel _$UpdatedRangedTimeModelFromJson(
  Map<String, dynamic> json,
) {
  return _UpdatedRangedTimeModel.fromJson(json);
}

/// @nodoc
mixin _$UpdatedRangedTimeModel {
  RangedTimeModel? get before => throw _privateConstructorUsedError;
  RangedTimeModel? get after => throw _privateConstructorUsedError;

  /// Serializes this UpdatedRangedTimeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatedRangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatedRangedTimeModelCopyWith<UpdatedRangedTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedRangedTimeModelCopyWith<$Res> {
  factory $UpdatedRangedTimeModelCopyWith(
    UpdatedRangedTimeModel value,
    $Res Function(UpdatedRangedTimeModel) then,
  ) = _$UpdatedRangedTimeModelCopyWithImpl<$Res, UpdatedRangedTimeModel>;
  @useResult
  $Res call({RangedTimeModel? before, RangedTimeModel? after});

  $RangedTimeModelCopyWith<$Res>? get before;
  $RangedTimeModelCopyWith<$Res>? get after;
}

/// @nodoc
class _$UpdatedRangedTimeModelCopyWithImpl<
  $Res,
  $Val extends UpdatedRangedTimeModel
>
    implements $UpdatedRangedTimeModelCopyWith<$Res> {
  _$UpdatedRangedTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatedRangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? before = freezed, Object? after = freezed}) {
    return _then(
      _value.copyWith(
            before:
                freezed == before
                    ? _value.before
                    : before // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel?,
            after:
                freezed == after
                    ? _value.after
                    : after // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdatedRangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res>? get before {
    if (_value.before == null) {
      return null;
    }

    return $RangedTimeModelCopyWith<$Res>(_value.before!, (value) {
      return _then(_value.copyWith(before: value) as $Val);
    });
  }

  /// Create a copy of UpdatedRangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res>? get after {
    if (_value.after == null) {
      return null;
    }

    return $RangedTimeModelCopyWith<$Res>(_value.after!, (value) {
      return _then(_value.copyWith(after: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatedRangedTimeModelImplCopyWith<$Res>
    implements $UpdatedRangedTimeModelCopyWith<$Res> {
  factory _$$UpdatedRangedTimeModelImplCopyWith(
    _$UpdatedRangedTimeModelImpl value,
    $Res Function(_$UpdatedRangedTimeModelImpl) then,
  ) = __$$UpdatedRangedTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RangedTimeModel? before, RangedTimeModel? after});

  @override
  $RangedTimeModelCopyWith<$Res>? get before;
  @override
  $RangedTimeModelCopyWith<$Res>? get after;
}

/// @nodoc
class __$$UpdatedRangedTimeModelImplCopyWithImpl<$Res>
    extends
        _$UpdatedRangedTimeModelCopyWithImpl<$Res, _$UpdatedRangedTimeModelImpl>
    implements _$$UpdatedRangedTimeModelImplCopyWith<$Res> {
  __$$UpdatedRangedTimeModelImplCopyWithImpl(
    _$UpdatedRangedTimeModelImpl _value,
    $Res Function(_$UpdatedRangedTimeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdatedRangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? before = freezed, Object? after = freezed}) {
    return _then(
      _$UpdatedRangedTimeModelImpl(
        before:
            freezed == before
                ? _value.before
                : before // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel?,
        after:
            freezed == after
                ? _value.after
                : after // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UpdatedRangedTimeModelImpl implements _UpdatedRangedTimeModel {
  const _$UpdatedRangedTimeModelImpl({this.before, this.after});

  factory _$UpdatedRangedTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatedRangedTimeModelImplFromJson(json);

  @override
  final RangedTimeModel? before;
  @override
  final RangedTimeModel? after;

  @override
  String toString() {
    return 'UpdatedRangedTimeModel(before: $before, after: $after)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedRangedTimeModelImpl &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.after, after) || other.after == after));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, before, after);

  /// Create a copy of UpdatedRangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedRangedTimeModelImplCopyWith<_$UpdatedRangedTimeModelImpl>
  get copyWith =>
      __$$UpdatedRangedTimeModelImplCopyWithImpl<_$UpdatedRangedTimeModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatedRangedTimeModelImplToJson(this);
  }
}

abstract class _UpdatedRangedTimeModel implements UpdatedRangedTimeModel {
  const factory _UpdatedRangedTimeModel({
    final RangedTimeModel? before,
    final RangedTimeModel? after,
  }) = _$UpdatedRangedTimeModelImpl;

  factory _UpdatedRangedTimeModel.fromJson(Map<String, dynamic> json) =
      _$UpdatedRangedTimeModelImpl.fromJson;

  @override
  RangedTimeModel? get before;
  @override
  RangedTimeModel? get after;

  /// Create a copy of UpdatedRangedTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedRangedTimeModelImplCopyWith<_$UpdatedRangedTimeModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
