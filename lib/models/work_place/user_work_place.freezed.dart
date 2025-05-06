// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_work_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserWorkPlace _$UserWorkPlaceFromJson(Map<String, dynamic> json) {
  return _UserWorkPlace.fromJson(json);
}

/// @nodoc
mixin _$UserWorkPlace {
  String get workPlaceId => throw _privateConstructorUsedError;
  String get workPlaceNickName => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get joinedAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get leftAt => throw _privateConstructorUsedError;

  /// Serializes this UserWorkPlace to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserWorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWorkPlaceCopyWith<UserWorkPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWorkPlaceCopyWith<$Res> {
  factory $UserWorkPlaceCopyWith(
    UserWorkPlace value,
    $Res Function(UserWorkPlace) then,
  ) = _$UserWorkPlaceCopyWithImpl<$Res, UserWorkPlace>;
  @useResult
  $Res call({
    String workPlaceId,
    String workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? leftAt,
  });
}

/// @nodoc
class _$UserWorkPlaceCopyWithImpl<$Res, $Val extends UserWorkPlace>
    implements $UserWorkPlaceCopyWith<$Res> {
  _$UserWorkPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workPlaceId = null,
    Object? workPlaceNickName = null,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceNickName:
                null == workPlaceNickName
                    ? _value.workPlaceNickName
                    : workPlaceNickName // ignore: cast_nullable_to_non_nullable
                        as String,
            joinedAt:
                freezed == joinedAt
                    ? _value.joinedAt
                    : joinedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            leftAt:
                freezed == leftAt
                    ? _value.leftAt
                    : leftAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserWorkPlaceImplCopyWith<$Res>
    implements $UserWorkPlaceCopyWith<$Res> {
  factory _$$UserWorkPlaceImplCopyWith(
    _$UserWorkPlaceImpl value,
    $Res Function(_$UserWorkPlaceImpl) then,
  ) = __$$UserWorkPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String workPlaceId,
    String workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? leftAt,
  });
}

/// @nodoc
class __$$UserWorkPlaceImplCopyWithImpl<$Res>
    extends _$UserWorkPlaceCopyWithImpl<$Res, _$UserWorkPlaceImpl>
    implements _$$UserWorkPlaceImplCopyWith<$Res> {
  __$$UserWorkPlaceImplCopyWithImpl(
    _$UserWorkPlaceImpl _value,
    $Res Function(_$UserWorkPlaceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserWorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workPlaceId = null,
    Object? workPlaceNickName = null,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
  }) {
    return _then(
      _$UserWorkPlaceImpl(
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceNickName:
            null == workPlaceNickName
                ? _value.workPlaceNickName
                : workPlaceNickName // ignore: cast_nullable_to_non_nullable
                    as String,
        joinedAt:
            freezed == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        leftAt:
            freezed == leftAt
                ? _value.leftAt
                : leftAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserWorkPlaceImpl implements _UserWorkPlace {
  const _$UserWorkPlaceImpl({
    required this.workPlaceId,
    required this.workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.leftAt,
  });

  factory _$UserWorkPlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserWorkPlaceImplFromJson(json);

  @override
  final String workPlaceId;
  @override
  final String workPlaceNickName;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? joinedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? leftAt;

  @override
  String toString() {
    return 'UserWorkPlace(workPlaceId: $workPlaceId, workPlaceNickName: $workPlaceNickName, joinedAt: $joinedAt, leftAt: $leftAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWorkPlaceImpl &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.workPlaceNickName, workPlaceNickName) ||
                other.workPlaceNickName == workPlaceNickName) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.leftAt, leftAt) || other.leftAt == leftAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    workPlaceId,
    workPlaceNickName,
    joinedAt,
    leftAt,
  );

  /// Create a copy of UserWorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWorkPlaceImplCopyWith<_$UserWorkPlaceImpl> get copyWith =>
      __$$UserWorkPlaceImplCopyWithImpl<_$UserWorkPlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWorkPlaceImplToJson(this);
  }
}

abstract class _UserWorkPlace implements UserWorkPlace {
  const factory _UserWorkPlace({
    required final String workPlaceId,
    required final String workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? leftAt,
  }) = _$UserWorkPlaceImpl;

  factory _UserWorkPlace.fromJson(Map<String, dynamic> json) =
      _$UserWorkPlaceImpl.fromJson;

  @override
  String get workPlaceId;
  @override
  String get workPlaceNickName;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get joinedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get leftAt;

  /// Create a copy of UserWorkPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWorkPlaceImplCopyWith<_$UserWorkPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
