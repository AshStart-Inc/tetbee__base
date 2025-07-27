// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_preset_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MyPresetAvailability _$MyPresetAvailabilityFromJson(Map<String, dynamic> json) {
  return _MyPresetAvailability.fromJson(json);
}

/// @nodoc
mixin _$MyPresetAvailability {
  String? get id => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<DailyAvailability> get dailyAvailabilityTimeRange =>
      throw _privateConstructorUsedError;

  /// Serializes this MyPresetAvailability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyPresetAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyPresetAvailabilityCopyWith<MyPresetAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPresetAvailabilityCopyWith<$Res> {
  factory $MyPresetAvailabilityCopyWith(
    MyPresetAvailability value,
    $Res Function(MyPresetAvailability) then,
  ) = _$MyPresetAvailabilityCopyWithImpl<$Res, MyPresetAvailability>;
  @useResult
  $Res call({
    String? id,
    bool isSelected,
    bool deleted,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String title,
    List<DailyAvailability> dailyAvailabilityTimeRange,
  });
}

/// @nodoc
class _$MyPresetAvailabilityCopyWithImpl<
  $Res,
  $Val extends MyPresetAvailability
>
    implements $MyPresetAvailabilityCopyWith<$Res> {
  _$MyPresetAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyPresetAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isSelected = null,
    Object? deleted = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? title = null,
    Object? dailyAvailabilityTimeRange = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            isSelected:
                null == isSelected
                    ? _value.isSelected
                    : isSelected // ignore: cast_nullable_to_non_nullable
                        as bool,
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
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            dailyAvailabilityTimeRange:
                null == dailyAvailabilityTimeRange
                    ? _value.dailyAvailabilityTimeRange
                    : dailyAvailabilityTimeRange // ignore: cast_nullable_to_non_nullable
                        as List<DailyAvailability>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MyPresetAvailabilityImplCopyWith<$Res>
    implements $MyPresetAvailabilityCopyWith<$Res> {
  factory _$$MyPresetAvailabilityImplCopyWith(
    _$MyPresetAvailabilityImpl value,
    $Res Function(_$MyPresetAvailabilityImpl) then,
  ) = __$$MyPresetAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    bool isSelected,
    bool deleted,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String title,
    List<DailyAvailability> dailyAvailabilityTimeRange,
  });
}

/// @nodoc
class __$$MyPresetAvailabilityImplCopyWithImpl<$Res>
    extends _$MyPresetAvailabilityCopyWithImpl<$Res, _$MyPresetAvailabilityImpl>
    implements _$$MyPresetAvailabilityImplCopyWith<$Res> {
  __$$MyPresetAvailabilityImplCopyWithImpl(
    _$MyPresetAvailabilityImpl _value,
    $Res Function(_$MyPresetAvailabilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MyPresetAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isSelected = null,
    Object? deleted = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? title = null,
    Object? dailyAvailabilityTimeRange = null,
  }) {
    return _then(
      _$MyPresetAvailabilityImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        isSelected:
            null == isSelected
                ? _value.isSelected
                : isSelected // ignore: cast_nullable_to_non_nullable
                    as bool,
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
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        dailyAvailabilityTimeRange:
            null == dailyAvailabilityTimeRange
                ? _value._dailyAvailabilityTimeRange
                : dailyAvailabilityTimeRange // ignore: cast_nullable_to_non_nullable
                    as List<DailyAvailability>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MyPresetAvailabilityImpl implements _MyPresetAvailability {
  const _$MyPresetAvailabilityImpl({
    this.id,
    this.isSelected = false,
    this.deleted = false,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.title = '',
    final List<DailyAvailability> dailyAvailabilityTimeRange = const [],
  }) : _dailyAvailabilityTimeRange = dailyAvailabilityTimeRange;

  factory _$MyPresetAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyPresetAvailabilityImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  @JsonKey()
  final bool deleted;
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
  final String title;
  final List<DailyAvailability> _dailyAvailabilityTimeRange;
  @override
  @JsonKey()
  List<DailyAvailability> get dailyAvailabilityTimeRange {
    if (_dailyAvailabilityTimeRange is EqualUnmodifiableListView)
      return _dailyAvailabilityTimeRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyAvailabilityTimeRange);
  }

  @override
  String toString() {
    return 'MyPresetAvailability(id: $id, isSelected: $isSelected, deleted: $deleted, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, title: $title, dailyAvailabilityTimeRange: $dailyAvailabilityTimeRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPresetAvailabilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(
              other._dailyAvailabilityTimeRange,
              _dailyAvailabilityTimeRange,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    isSelected,
    deleted,
    createdAt,
    createdBy,
    updatedAt,
    title,
    const DeepCollectionEquality().hash(_dailyAvailabilityTimeRange),
  );

  /// Create a copy of MyPresetAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPresetAvailabilityImplCopyWith<_$MyPresetAvailabilityImpl>
  get copyWith =>
      __$$MyPresetAvailabilityImplCopyWithImpl<_$MyPresetAvailabilityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MyPresetAvailabilityImplToJson(this);
  }
}

abstract class _MyPresetAvailability implements MyPresetAvailability {
  const factory _MyPresetAvailability({
    final String? id,
    final bool isSelected,
    final bool deleted,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String title,
    final List<DailyAvailability> dailyAvailabilityTimeRange,
  }) = _$MyPresetAvailabilityImpl;

  factory _MyPresetAvailability.fromJson(Map<String, dynamic> json) =
      _$MyPresetAvailabilityImpl.fromJson;

  @override
  String? get id;
  @override
  bool get isSelected;
  @override
  bool get deleted;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  String get title;
  @override
  List<DailyAvailability> get dailyAvailabilityTimeRange;

  /// Create a copy of MyPresetAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyPresetAvailabilityImplCopyWith<_$MyPresetAvailabilityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
