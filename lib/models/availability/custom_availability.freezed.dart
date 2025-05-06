// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomAvailability _$CustomAvailabilityFromJson(Map<String, dynamic> json) {
  return _CustomAvailability.fromJson(json);
}

/// @nodoc
mixin _$CustomAvailability {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get workPlaceId => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  List<DailyAvailability> get dailyAvailability =>
      throw _privateConstructorUsedError;

  /// Serializes this CustomAvailability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomAvailabilityCopyWith<CustomAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomAvailabilityCopyWith<$Res> {
  factory $CustomAvailabilityCopyWith(
    CustomAvailability value,
    $Res Function(CustomAvailability) then,
  ) = _$CustomAvailabilityCopyWithImpl<$Res, CustomAvailability>;
  @useResult
  $Res call({
    String id,
    String userId,
    String workPlaceId,
    bool isDefault,
    String title,
    bool deleted,
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    List<DailyAvailability> dailyAvailability,
  });
}

/// @nodoc
class _$CustomAvailabilityCopyWithImpl<$Res, $Val extends CustomAvailability>
    implements $CustomAvailabilityCopyWith<$Res> {
  _$CustomAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? workPlaceId = null,
    Object? isDefault = null,
    Object? title = null,
    Object? deleted = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? dailyAvailability = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            isDefault:
                null == isDefault
                    ? _value.isDefault
                    : isDefault // ignore: cast_nullable_to_non_nullable
                        as bool,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
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
            dailyAvailability:
                null == dailyAvailability
                    ? _value.dailyAvailability
                    : dailyAvailability // ignore: cast_nullable_to_non_nullable
                        as List<DailyAvailability>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomAvailabilityImplCopyWith<$Res>
    implements $CustomAvailabilityCopyWith<$Res> {
  factory _$$CustomAvailabilityImplCopyWith(
    _$CustomAvailabilityImpl value,
    $Res Function(_$CustomAvailabilityImpl) then,
  ) = __$$CustomAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String workPlaceId,
    bool isDefault,
    String title,
    bool deleted,
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    List<DailyAvailability> dailyAvailability,
  });
}

/// @nodoc
class __$$CustomAvailabilityImplCopyWithImpl<$Res>
    extends _$CustomAvailabilityCopyWithImpl<$Res, _$CustomAvailabilityImpl>
    implements _$$CustomAvailabilityImplCopyWith<$Res> {
  __$$CustomAvailabilityImplCopyWithImpl(
    _$CustomAvailabilityImpl _value,
    $Res Function(_$CustomAvailabilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? workPlaceId = null,
    Object? isDefault = null,
    Object? title = null,
    Object? deleted = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? dailyAvailability = null,
  }) {
    return _then(
      _$CustomAvailabilityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        isDefault:
            null == isDefault
                ? _value.isDefault
                : isDefault // ignore: cast_nullable_to_non_nullable
                    as bool,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
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
        dailyAvailability:
            null == dailyAvailability
                ? _value._dailyAvailability
                : dailyAvailability // ignore: cast_nullable_to_non_nullable
                    as List<DailyAvailability>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomAvailabilityImpl implements _CustomAvailability {
  const _$CustomAvailabilityImpl({
    required this.id,
    required this.userId,
    required this.workPlaceId,
    this.isDefault = false,
    required this.title,
    this.deleted = false,
    this.createdAt,
    required this.createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    required this.updatedBy,
    required final List<DailyAvailability> dailyAvailability,
  }) : _dailyAvailability = dailyAvailability;

  factory _$CustomAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomAvailabilityImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String workPlaceId;
  @override
  @JsonKey()
  final bool isDefault;
  @override
  final String title;
  @override
  @JsonKey()
  final bool deleted;
  @override
  final DateTime? createdAt;
  @override
  final String createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? updatedAt;
  @override
  final String updatedBy;
  final List<DailyAvailability> _dailyAvailability;
  @override
  List<DailyAvailability> get dailyAvailability {
    if (_dailyAvailability is EqualUnmodifiableListView)
      return _dailyAvailability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyAvailability);
  }

  @override
  String toString() {
    return 'CustomAvailability(id: $id, userId: $userId, workPlaceId: $workPlaceId, isDefault: $isDefault, title: $title, deleted: $deleted, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, dailyAvailability: $dailyAvailability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomAvailabilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            const DeepCollectionEquality().equals(
              other._dailyAvailability,
              _dailyAvailability,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    workPlaceId,
    isDefault,
    title,
    deleted,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    const DeepCollectionEquality().hash(_dailyAvailability),
  );

  /// Create a copy of CustomAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomAvailabilityImplCopyWith<_$CustomAvailabilityImpl> get copyWith =>
      __$$CustomAvailabilityImplCopyWithImpl<_$CustomAvailabilityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomAvailabilityImplToJson(this);
  }
}

abstract class _CustomAvailability implements CustomAvailability {
  const factory _CustomAvailability({
    required final String id,
    required final String userId,
    required final String workPlaceId,
    final bool isDefault,
    required final String title,
    final bool deleted,
    final DateTime? createdAt,
    required final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    required final String updatedBy,
    required final List<DailyAvailability> dailyAvailability,
  }) = _$CustomAvailabilityImpl;

  factory _CustomAvailability.fromJson(Map<String, dynamic> json) =
      _$CustomAvailabilityImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get workPlaceId;
  @override
  bool get isDefault;
  @override
  String get title;
  @override
  bool get deleted;
  @override
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  String get updatedBy;
  @override
  List<DailyAvailability> get dailyAvailability;

  /// Create a copy of CustomAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomAvailabilityImplCopyWith<_$CustomAvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
