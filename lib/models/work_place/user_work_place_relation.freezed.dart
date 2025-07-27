// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_work_place_relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserWorkPlaceRelation _$UserWorkPlaceRelationFromJson(
  Map<String, dynamic> json,
) {
  return _UserWorkPlaceRelation.fromJson(json);
}

/// @nodoc
mixin _$UserWorkPlaceRelation {
  String? get id => throw _privateConstructorUsedError;
  String get workPlaceId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  String? get removedReason => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get joinedAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get leftAt => throw _privateConstructorUsedError;

  /// Serializes this UserWorkPlaceRelation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserWorkPlaceRelation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWorkPlaceRelationCopyWith<UserWorkPlaceRelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWorkPlaceRelationCopyWith<$Res> {
  factory $UserWorkPlaceRelationCopyWith(
    UserWorkPlaceRelation value,
    $Res Function(UserWorkPlaceRelation) then,
  ) = _$UserWorkPlaceRelationCopyWithImpl<$Res, UserWorkPlaceRelation>;
  @useResult
  $Res call({
    String? id,
    String workPlaceId,
    bool isActive,
    bool isSelected,
    String? removedReason,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? leftAt,
  });
}

/// @nodoc
class _$UserWorkPlaceRelationCopyWithImpl<
  $Res,
  $Val extends UserWorkPlaceRelation
>
    implements $UserWorkPlaceRelationCopyWith<$Res> {
  _$UserWorkPlaceRelationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWorkPlaceRelation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? workPlaceId = null,
    Object? isActive = null,
    Object? isSelected = null,
    Object? removedReason = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            isActive:
                null == isActive
                    ? _value.isActive
                    : isActive // ignore: cast_nullable_to_non_nullable
                        as bool,
            isSelected:
                null == isSelected
                    ? _value.isSelected
                    : isSelected // ignore: cast_nullable_to_non_nullable
                        as bool,
            removedReason:
                freezed == removedReason
                    ? _value.removedReason
                    : removedReason // ignore: cast_nullable_to_non_nullable
                        as String?,
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
            updatedBy:
                null == updatedBy
                    ? _value.updatedBy
                    : updatedBy // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserWorkPlaceRelationImplCopyWith<$Res>
    implements $UserWorkPlaceRelationCopyWith<$Res> {
  factory _$$UserWorkPlaceRelationImplCopyWith(
    _$UserWorkPlaceRelationImpl value,
    $Res Function(_$UserWorkPlaceRelationImpl) then,
  ) = __$$UserWorkPlaceRelationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String workPlaceId,
    bool isActive,
    bool isSelected,
    String? removedReason,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? leftAt,
  });
}

/// @nodoc
class __$$UserWorkPlaceRelationImplCopyWithImpl<$Res>
    extends
        _$UserWorkPlaceRelationCopyWithImpl<$Res, _$UserWorkPlaceRelationImpl>
    implements _$$UserWorkPlaceRelationImplCopyWith<$Res> {
  __$$UserWorkPlaceRelationImplCopyWithImpl(
    _$UserWorkPlaceRelationImpl _value,
    $Res Function(_$UserWorkPlaceRelationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserWorkPlaceRelation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? workPlaceId = null,
    Object? isActive = null,
    Object? isSelected = null,
    Object? removedReason = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
  }) {
    return _then(
      _$UserWorkPlaceRelationImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        isActive:
            null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                    as bool,
        isSelected:
            null == isSelected
                ? _value.isSelected
                : isSelected // ignore: cast_nullable_to_non_nullable
                    as bool,
        removedReason:
            freezed == removedReason
                ? _value.removedReason
                : removedReason // ignore: cast_nullable_to_non_nullable
                    as String?,
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
        updatedBy:
            null == updatedBy
                ? _value.updatedBy
                : updatedBy // ignore: cast_nullable_to_non_nullable
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

@JsonSerializable(explicitToJson: true)
class _$UserWorkPlaceRelationImpl implements _UserWorkPlaceRelation {
  const _$UserWorkPlaceRelationImpl({
    this.id,
    required this.workPlaceId,
    this.isActive = false,
    this.isSelected = false,
    this.removedReason,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.leftAt,
  });

  factory _$UserWorkPlaceRelationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserWorkPlaceRelationImplFromJson(json);

  @override
  final String? id;
  @override
  final String workPlaceId;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  final String? removedReason;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? createdAt;
  @override
  @JsonKey()
  final String createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final String updatedBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? joinedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? leftAt;

  @override
  String toString() {
    return 'UserWorkPlaceRelation(id: $id, workPlaceId: $workPlaceId, isActive: $isActive, isSelected: $isSelected, removedReason: $removedReason, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, joinedAt: $joinedAt, leftAt: $leftAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWorkPlaceRelationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.removedReason, removedReason) ||
                other.removedReason == removedReason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.leftAt, leftAt) || other.leftAt == leftAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    workPlaceId,
    isActive,
    isSelected,
    removedReason,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    joinedAt,
    leftAt,
  );

  /// Create a copy of UserWorkPlaceRelation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWorkPlaceRelationImplCopyWith<_$UserWorkPlaceRelationImpl>
  get copyWith =>
      __$$UserWorkPlaceRelationImplCopyWithImpl<_$UserWorkPlaceRelationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWorkPlaceRelationImplToJson(this);
  }
}

abstract class _UserWorkPlaceRelation implements UserWorkPlaceRelation {
  const factory _UserWorkPlaceRelation({
    final String? id,
    required final String workPlaceId,
    final bool isActive,
    final bool isSelected,
    final String? removedReason,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? joinedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? leftAt,
  }) = _$UserWorkPlaceRelationImpl;

  factory _UserWorkPlaceRelation.fromJson(Map<String, dynamic> json) =
      _$UserWorkPlaceRelationImpl.fromJson;

  @override
  String? get id;
  @override
  String get workPlaceId;
  @override
  bool get isActive;
  @override
  bool get isSelected;
  @override
  String? get removedReason;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  String get updatedBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get joinedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get leftAt;

  /// Create a copy of UserWorkPlaceRelation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWorkPlaceRelationImplCopyWith<_$UserWorkPlaceRelationImpl>
  get copyWith => throw _privateConstructorUsedError;
}
