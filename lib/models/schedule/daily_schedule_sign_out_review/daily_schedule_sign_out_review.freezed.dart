// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_schedule_sign_out_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyScheduleSignOutReview _$DailyScheduleSignOutReviewFromJson(
  Map<String, dynamic> json,
) {
  return _DailyScheduleSignOutReview.fromJson(json);
}

/// @nodoc
mixin _$DailyScheduleSignOutReview {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get confirmedAt => throw _privateConstructorUsedError;
  String get confirmedBy => throw _privateConstructorUsedError;
  Map<String, ScheduleSignOutConfirmModel> get confirms =>
      throw _privateConstructorUsedError;

  /// Serializes this DailyScheduleSignOutReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyScheduleSignOutReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyScheduleSignOutReviewCopyWith<DailyScheduleSignOutReview>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyScheduleSignOutReviewCopyWith<$Res> {
  factory $DailyScheduleSignOutReviewCopyWith(
    DailyScheduleSignOutReview value,
    $Res Function(DailyScheduleSignOutReview) then,
  ) =
      _$DailyScheduleSignOutReviewCopyWithImpl<
        $Res,
        DailyScheduleSignOutReview
      >;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? confirmedAt,
    String confirmedBy,
    Map<String, ScheduleSignOutConfirmModel> confirms,
  });
}

/// @nodoc
class _$DailyScheduleSignOutReviewCopyWithImpl<
  $Res,
  $Val extends DailyScheduleSignOutReview
>
    implements $DailyScheduleSignOutReviewCopyWith<$Res> {
  _$DailyScheduleSignOutReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyScheduleSignOutReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? confirmedAt = freezed,
    Object? confirmedBy = null,
    Object? confirms = null,
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
            confirmedAt:
                freezed == confirmedAt
                    ? _value.confirmedAt
                    : confirmedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            confirmedBy:
                null == confirmedBy
                    ? _value.confirmedBy
                    : confirmedBy // ignore: cast_nullable_to_non_nullable
                        as String,
            confirms:
                null == confirms
                    ? _value.confirms
                    : confirms // ignore: cast_nullable_to_non_nullable
                        as Map<String, ScheduleSignOutConfirmModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyScheduleSignOutReviewImplCopyWith<$Res>
    implements $DailyScheduleSignOutReviewCopyWith<$Res> {
  factory _$$DailyScheduleSignOutReviewImplCopyWith(
    _$DailyScheduleSignOutReviewImpl value,
    $Res Function(_$DailyScheduleSignOutReviewImpl) then,
  ) = __$$DailyScheduleSignOutReviewImplCopyWithImpl<$Res>;
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
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? confirmedAt,
    String confirmedBy,
    Map<String, ScheduleSignOutConfirmModel> confirms,
  });
}

/// @nodoc
class __$$DailyScheduleSignOutReviewImplCopyWithImpl<$Res>
    extends
        _$DailyScheduleSignOutReviewCopyWithImpl<
          $Res,
          _$DailyScheduleSignOutReviewImpl
        >
    implements _$$DailyScheduleSignOutReviewImplCopyWith<$Res> {
  __$$DailyScheduleSignOutReviewImplCopyWithImpl(
    _$DailyScheduleSignOutReviewImpl _value,
    $Res Function(_$DailyScheduleSignOutReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyScheduleSignOutReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? confirmedAt = freezed,
    Object? confirmedBy = null,
    Object? confirms = null,
  }) {
    return _then(
      _$DailyScheduleSignOutReviewImpl(
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
        confirmedAt:
            freezed == confirmedAt
                ? _value.confirmedAt
                : confirmedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        confirmedBy:
            null == confirmedBy
                ? _value.confirmedBy
                : confirmedBy // ignore: cast_nullable_to_non_nullable
                    as String,
        confirms:
            null == confirms
                ? _value._confirms
                : confirms // ignore: cast_nullable_to_non_nullable
                    as Map<String, ScheduleSignOutConfirmModel>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DailyScheduleSignOutReviewImpl implements _DailyScheduleSignOutReview {
  const _$DailyScheduleSignOutReviewImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.confirmedAt,
    this.confirmedBy = '',
    final Map<String, ScheduleSignOutConfirmModel> confirms = const {},
  }) : _confirms = confirms;

  factory _$DailyScheduleSignOutReviewImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DailyScheduleSignOutReviewImplFromJson(json);

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
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? confirmedAt;
  @override
  @JsonKey()
  final String confirmedBy;
  final Map<String, ScheduleSignOutConfirmModel> _confirms;
  @override
  @JsonKey()
  Map<String, ScheduleSignOutConfirmModel> get confirms {
    if (_confirms is EqualUnmodifiableMapView) return _confirms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_confirms);
  }

  @override
  String toString() {
    return 'DailyScheduleSignOutReview(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, confirmedAt: $confirmedAt, confirmedBy: $confirmedBy, confirms: $confirms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyScheduleSignOutReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(other.confirmedBy, confirmedBy) ||
                other.confirmedBy == confirmedBy) &&
            const DeepCollectionEquality().equals(other._confirms, _confirms));
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
    confirmedAt,
    confirmedBy,
    const DeepCollectionEquality().hash(_confirms),
  );

  /// Create a copy of DailyScheduleSignOutReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyScheduleSignOutReviewImplCopyWith<_$DailyScheduleSignOutReviewImpl>
  get copyWith => __$$DailyScheduleSignOutReviewImplCopyWithImpl<
    _$DailyScheduleSignOutReviewImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyScheduleSignOutReviewImplToJson(this);
  }
}

abstract class _DailyScheduleSignOutReview
    implements DailyScheduleSignOutReview {
  const factory _DailyScheduleSignOutReview({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? confirmedAt,
    final String confirmedBy,
    final Map<String, ScheduleSignOutConfirmModel> confirms,
  }) = _$DailyScheduleSignOutReviewImpl;

  factory _DailyScheduleSignOutReview.fromJson(Map<String, dynamic> json) =
      _$DailyScheduleSignOutReviewImpl.fromJson;

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
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get confirmedAt;
  @override
  String get confirmedBy;
  @override
  Map<String, ScheduleSignOutConfirmModel> get confirms;

  /// Create a copy of DailyScheduleSignOutReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyScheduleSignOutReviewImplCopyWith<_$DailyScheduleSignOutReviewImpl>
  get copyWith => throw _privateConstructorUsedError;
}
