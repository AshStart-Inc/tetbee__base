// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_availability_submission_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserAvailabilitySubmissionInfo _$UserAvailabilitySubmissionInfoFromJson(
  Map<String, dynamic> json,
) {
  return AUserAvailabilitySubmissionInfo.fromJson(json);
}

/// @nodoc
mixin _$UserAvailabilitySubmissionInfo {
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get submissionTime => throw _privateConstructorUsedError;

  /// Serializes this UserAvailabilitySubmissionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAvailabilitySubmissionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAvailabilitySubmissionInfoCopyWith<UserAvailabilitySubmissionInfo>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAvailabilitySubmissionInfoCopyWith<$Res> {
  factory $UserAvailabilitySubmissionInfoCopyWith(
    UserAvailabilitySubmissionInfo value,
    $Res Function(UserAvailabilitySubmissionInfo) then,
  ) =
      _$UserAvailabilitySubmissionInfoCopyWithImpl<
        $Res,
        UserAvailabilitySubmissionInfo
      >;
  @useResult
  $Res call({
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? submissionTime,
  });
}

/// @nodoc
class _$UserAvailabilitySubmissionInfoCopyWithImpl<
  $Res,
  $Val extends UserAvailabilitySubmissionInfo
>
    implements $UserAvailabilitySubmissionInfoCopyWith<$Res> {
  _$UserAvailabilitySubmissionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAvailabilitySubmissionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? submissionTime = freezed}) {
    return _then(
      _value.copyWith(
            submissionTime:
                freezed == submissionTime
                    ? _value.submissionTime
                    : submissionTime // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AUserAvailabilitySubmissionInfoImplCopyWith<$Res>
    implements $UserAvailabilitySubmissionInfoCopyWith<$Res> {
  factory _$$AUserAvailabilitySubmissionInfoImplCopyWith(
    _$AUserAvailabilitySubmissionInfoImpl value,
    $Res Function(_$AUserAvailabilitySubmissionInfoImpl) then,
  ) = __$$AUserAvailabilitySubmissionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? submissionTime,
  });
}

/// @nodoc
class __$$AUserAvailabilitySubmissionInfoImplCopyWithImpl<$Res>
    extends
        _$UserAvailabilitySubmissionInfoCopyWithImpl<
          $Res,
          _$AUserAvailabilitySubmissionInfoImpl
        >
    implements _$$AUserAvailabilitySubmissionInfoImplCopyWith<$Res> {
  __$$AUserAvailabilitySubmissionInfoImplCopyWithImpl(
    _$AUserAvailabilitySubmissionInfoImpl _value,
    $Res Function(_$AUserAvailabilitySubmissionInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAvailabilitySubmissionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? submissionTime = freezed}) {
    return _then(
      _$AUserAvailabilitySubmissionInfoImpl(
        submissionTime:
            freezed == submissionTime
                ? _value.submissionTime
                : submissionTime // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AUserAvailabilitySubmissionInfoImpl
    implements AUserAvailabilitySubmissionInfo {
  const _$AUserAvailabilitySubmissionInfoImpl({
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.submissionTime,
  });

  factory _$AUserAvailabilitySubmissionInfoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AUserAvailabilitySubmissionInfoImplFromJson(json);

  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? submissionTime;

  @override
  String toString() {
    return 'UserAvailabilitySubmissionInfo(submissionTime: $submissionTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AUserAvailabilitySubmissionInfoImpl &&
            (identical(other.submissionTime, submissionTime) ||
                other.submissionTime == submissionTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, submissionTime);

  /// Create a copy of UserAvailabilitySubmissionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AUserAvailabilitySubmissionInfoImplCopyWith<
    _$AUserAvailabilitySubmissionInfoImpl
  >
  get copyWith => __$$AUserAvailabilitySubmissionInfoImplCopyWithImpl<
    _$AUserAvailabilitySubmissionInfoImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AUserAvailabilitySubmissionInfoImplToJson(this);
  }
}

abstract class AUserAvailabilitySubmissionInfo
    implements UserAvailabilitySubmissionInfo {
  const factory AUserAvailabilitySubmissionInfo({
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? submissionTime,
  }) = _$AUserAvailabilitySubmissionInfoImpl;

  factory AUserAvailabilitySubmissionInfo.fromJson(Map<String, dynamic> json) =
      _$AUserAvailabilitySubmissionInfoImpl.fromJson;

  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get submissionTime;

  /// Create a copy of UserAvailabilitySubmissionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AUserAvailabilitySubmissionInfoImplCopyWith<
    _$AUserAvailabilitySubmissionInfoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
