// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_availabilities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserAvailabilities _$UserAvailabilitiesFromJson(Map<String, dynamic> json) {
  return AUserAvailabilities.fromJson(json);
}

/// @nodoc
mixin _$UserAvailabilities {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  List<DailyAvailability> get dailyAvailabilities =>
      throw _privateConstructorUsedError;
  String get weekComment => throw _privateConstructorUsedError;
  int? get weekDay => throw _privateConstructorUsedError;
  int? get prefferedHours => throw _privateConstructorUsedError;

  /// Serializes this UserAvailabilities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAvailabilitiesCopyWith<UserAvailabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAvailabilitiesCopyWith<$Res> {
  factory $UserAvailabilitiesCopyWith(
    UserAvailabilities value,
    $Res Function(UserAvailabilities) then,
  ) = _$UserAvailabilitiesCopyWithImpl<$Res, UserAvailabilities>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    List<DailyAvailability> dailyAvailabilities,
    String weekComment,
    int? weekDay,
    int? prefferedHours,
  });
}

/// @nodoc
class _$UserAvailabilitiesCopyWithImpl<$Res, $Val extends UserAvailabilities>
    implements $UserAvailabilitiesCopyWith<$Res> {
  _$UserAvailabilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? dailyAvailabilities = null,
    Object? weekComment = null,
    Object? weekDay = freezed,
    Object? prefferedHours = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
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
            dailyAvailabilities:
                null == dailyAvailabilities
                    ? _value.dailyAvailabilities
                    : dailyAvailabilities // ignore: cast_nullable_to_non_nullable
                        as List<DailyAvailability>,
            weekComment:
                null == weekComment
                    ? _value.weekComment
                    : weekComment // ignore: cast_nullable_to_non_nullable
                        as String,
            weekDay:
                freezed == weekDay
                    ? _value.weekDay
                    : weekDay // ignore: cast_nullable_to_non_nullable
                        as int?,
            prefferedHours:
                freezed == prefferedHours
                    ? _value.prefferedHours
                    : prefferedHours // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AUserAvailabilitiesImplCopyWith<$Res>
    implements $UserAvailabilitiesCopyWith<$Res> {
  factory _$$AUserAvailabilitiesImplCopyWith(
    _$AUserAvailabilitiesImpl value,
    $Res Function(_$AUserAvailabilitiesImpl) then,
  ) = __$$AUserAvailabilitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    List<DailyAvailability> dailyAvailabilities,
    String weekComment,
    int? weekDay,
    int? prefferedHours,
  });
}

/// @nodoc
class __$$AUserAvailabilitiesImplCopyWithImpl<$Res>
    extends _$UserAvailabilitiesCopyWithImpl<$Res, _$AUserAvailabilitiesImpl>
    implements _$$AUserAvailabilitiesImplCopyWith<$Res> {
  __$$AUserAvailabilitiesImplCopyWithImpl(
    _$AUserAvailabilitiesImpl _value,
    $Res Function(_$AUserAvailabilitiesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? dailyAvailabilities = null,
    Object? weekComment = null,
    Object? weekDay = freezed,
    Object? prefferedHours = freezed,
  }) {
    return _then(
      _$AUserAvailabilitiesImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
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
        dailyAvailabilities:
            null == dailyAvailabilities
                ? _value._dailyAvailabilities
                : dailyAvailabilities // ignore: cast_nullable_to_non_nullable
                    as List<DailyAvailability>,
        weekComment:
            null == weekComment
                ? _value.weekComment
                : weekComment // ignore: cast_nullable_to_non_nullable
                    as String,
        weekDay:
            freezed == weekDay
                ? _value.weekDay
                : weekDay // ignore: cast_nullable_to_non_nullable
                    as int?,
        prefferedHours:
            freezed == prefferedHours
                ? _value.prefferedHours
                : prefferedHours // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AUserAvailabilitiesImpl implements AUserAvailabilities {
  const _$AUserAvailabilitiesImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    required final List<DailyAvailability> dailyAvailabilities,
    this.weekComment = '',
    this.weekDay,
    this.prefferedHours,
  }) : _dailyAvailabilities = dailyAvailabilities;

  factory _$AUserAvailabilitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AUserAvailabilitiesImplFromJson(json);

  @override
  final String? id;
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
  final List<DailyAvailability> _dailyAvailabilities;
  @override
  List<DailyAvailability> get dailyAvailabilities {
    if (_dailyAvailabilities is EqualUnmodifiableListView)
      return _dailyAvailabilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyAvailabilities);
  }

  @override
  @JsonKey()
  final String weekComment;
  @override
  final int? weekDay;
  @override
  final int? prefferedHours;

  @override
  String toString() {
    return 'UserAvailabilities(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, dailyAvailabilities: $dailyAvailabilities, weekComment: $weekComment, weekDay: $weekDay, prefferedHours: $prefferedHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AUserAvailabilitiesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            const DeepCollectionEquality().equals(
              other._dailyAvailabilities,
              _dailyAvailabilities,
            ) &&
            (identical(other.weekComment, weekComment) ||
                other.weekComment == weekComment) &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.prefferedHours, prefferedHours) ||
                other.prefferedHours == prefferedHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    const DeepCollectionEquality().hash(_dailyAvailabilities),
    weekComment,
    weekDay,
    prefferedHours,
  );

  /// Create a copy of UserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AUserAvailabilitiesImplCopyWith<_$AUserAvailabilitiesImpl> get copyWith =>
      __$$AUserAvailabilitiesImplCopyWithImpl<_$AUserAvailabilitiesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AUserAvailabilitiesImplToJson(this);
  }
}

abstract class AUserAvailabilities implements UserAvailabilities {
  const factory AUserAvailabilities({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    required final List<DailyAvailability> dailyAvailabilities,
    final String weekComment,
    final int? weekDay,
    final int? prefferedHours,
  }) = _$AUserAvailabilitiesImpl;

  factory AUserAvailabilities.fromJson(Map<String, dynamic> json) =
      _$AUserAvailabilitiesImpl.fromJson;

  @override
  String? get id;
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
  List<DailyAvailability> get dailyAvailabilities;
  @override
  String get weekComment;
  @override
  int? get weekDay;
  @override
  int? get prefferedHours;

  /// Create a copy of UserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AUserAvailabilitiesImplCopyWith<_$AUserAvailabilitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
