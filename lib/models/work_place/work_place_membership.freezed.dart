// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_place_membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkPlaceMembership _$WorkPlaceMembershipFromJson(Map<String, dynamic> json) {
  return _WorkPlaceMembership.fromJson(json);
}

/// @nodoc
mixin _$WorkPlaceMembership {
  String get id => throw _privateConstructorUsedError;
  String get workPlaceId => throw _privateConstructorUsedError;
  String get membershipId => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get startsAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get endsAt => throw _privateConstructorUsedError;
  dynamic get isActive => throw _privateConstructorUsedError;

  /// Serializes this WorkPlaceMembership to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkPlaceMembership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkPlaceMembershipCopyWith<WorkPlaceMembership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPlaceMembershipCopyWith<$Res> {
  factory $WorkPlaceMembershipCopyWith(
    WorkPlaceMembership value,
    $Res Function(WorkPlaceMembership) then,
  ) = _$WorkPlaceMembershipCopyWithImpl<$Res, WorkPlaceMembership>;
  @useResult
  $Res call({
    String id,
    String workPlaceId,
    String membershipId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startsAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endsAt,
    dynamic isActive,
  });
}

/// @nodoc
class _$WorkPlaceMembershipCopyWithImpl<$Res, $Val extends WorkPlaceMembership>
    implements $WorkPlaceMembershipCopyWith<$Res> {
  _$WorkPlaceMembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkPlaceMembership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workPlaceId = null,
    Object? membershipId = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isActive = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            membershipId:
                null == membershipId
                    ? _value.membershipId
                    : membershipId // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            createdBy:
                null == createdBy
                    ? _value.createdBy
                    : createdBy // ignore: cast_nullable_to_non_nullable
                        as String,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            startsAt:
                freezed == startsAt
                    ? _value.startsAt
                    : startsAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            endsAt:
                freezed == endsAt
                    ? _value.endsAt
                    : endsAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            isActive:
                freezed == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkPlaceMembershipImplCopyWith<$Res>
    implements $WorkPlaceMembershipCopyWith<$Res> {
  factory _$$WorkPlaceMembershipImplCopyWith(
    _$WorkPlaceMembershipImpl value,
    $Res Function(_$WorkPlaceMembershipImpl) then,
  ) = __$$WorkPlaceMembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String workPlaceId,
    String membershipId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? startsAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? endsAt,
    dynamic isActive,
  });
}

/// @nodoc
class __$$WorkPlaceMembershipImplCopyWithImpl<$Res>
    extends _$WorkPlaceMembershipCopyWithImpl<$Res, _$WorkPlaceMembershipImpl>
    implements _$$WorkPlaceMembershipImplCopyWith<$Res> {
  __$$WorkPlaceMembershipImplCopyWithImpl(
    _$WorkPlaceMembershipImpl _value,
    $Res Function(_$WorkPlaceMembershipImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkPlaceMembership
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workPlaceId = null,
    Object? membershipId = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? startsAt = freezed,
    Object? endsAt = freezed,
    Object? isActive = freezed,
  }) {
    return _then(
      _$WorkPlaceMembershipImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        membershipId:
            null == membershipId
                ? _value.membershipId
                : membershipId // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        createdBy:
            null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                    as String,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        startsAt:
            freezed == startsAt
                ? _value.startsAt
                : startsAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        endsAt:
            freezed == endsAt
                ? _value.endsAt
                : endsAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        isActive: freezed == isActive ? _value.isActive! : isActive,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkPlaceMembershipImpl implements _WorkPlaceMembership {
  const _$WorkPlaceMembershipImpl({
    required this.id,
    required this.workPlaceId,
    required this.membershipId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    required this.createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.startsAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.endsAt,
    this.isActive = false,
  });

  factory _$WorkPlaceMembershipImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkPlaceMembershipImplFromJson(json);

  @override
  final String id;
  @override
  final String workPlaceId;
  @override
  final String membershipId;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? createdAt;
  @override
  final String createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? updatedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? startsAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? endsAt;
  @override
  @JsonKey()
  final dynamic isActive;

  @override
  String toString() {
    return 'WorkPlaceMembership(id: $id, workPlaceId: $workPlaceId, membershipId: $membershipId, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, startsAt: $startsAt, endsAt: $endsAt, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkPlaceMembershipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.membershipId, membershipId) ||
                other.membershipId == membershipId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    workPlaceId,
    membershipId,
    createdAt,
    createdBy,
    updatedAt,
    startsAt,
    endsAt,
    const DeepCollectionEquality().hash(isActive),
  );

  /// Create a copy of WorkPlaceMembership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkPlaceMembershipImplCopyWith<_$WorkPlaceMembershipImpl> get copyWith =>
      __$$WorkPlaceMembershipImplCopyWithImpl<_$WorkPlaceMembershipImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkPlaceMembershipImplToJson(this);
  }
}

abstract class _WorkPlaceMembership implements WorkPlaceMembership {
  const factory _WorkPlaceMembership({
    required final String id,
    required final String workPlaceId,
    required final String membershipId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    required final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? startsAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? endsAt,
    final dynamic isActive,
  }) = _$WorkPlaceMembershipImpl;

  factory _WorkPlaceMembership.fromJson(Map<String, dynamic> json) =
      _$WorkPlaceMembershipImpl.fromJson;

  @override
  String get id;
  @override
  String get workPlaceId;
  @override
  String get membershipId;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get startsAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get endsAt;
  @override
  dynamic get isActive;

  /// Create a copy of WorkPlaceMembership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkPlaceMembershipImplCopyWith<_$WorkPlaceMembershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
