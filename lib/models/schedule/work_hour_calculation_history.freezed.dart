// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_hour_calculation_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkHourCalculationHistory _$WorkHourCalculationHistoryFromJson(
  Map<String, dynamic> json,
) {
  return _WorkHourCalculationHistory.fromJson(json);
}

/// @nodoc
mixin _$WorkHourCalculationHistory {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  RangedTimeModel get dateRange => throw _privateConstructorUsedError;
  @JsonKey(
    toJson: Helpers.dateListToIsoJson,
    fromJson: Helpers.dateListFromStringJson,
  )
  List<DateTime>? get holidays => throw _privateConstructorUsedError;

  /// Serializes this WorkHourCalculationHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkHourCalculationHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkHourCalculationHistoryCopyWith<WorkHourCalculationHistory>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkHourCalculationHistoryCopyWith<$Res> {
  factory $WorkHourCalculationHistoryCopyWith(
    WorkHourCalculationHistory value,
    $Res Function(WorkHourCalculationHistory) then,
  ) =
      _$WorkHourCalculationHistoryCopyWithImpl<
        $Res,
        WorkHourCalculationHistory
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
    RangedTimeModel dateRange,
    @JsonKey(
      toJson: Helpers.dateListToIsoJson,
      fromJson: Helpers.dateListFromStringJson,
    )
    List<DateTime>? holidays,
  });

  $RangedTimeModelCopyWith<$Res> get dateRange;
}

/// @nodoc
class _$WorkHourCalculationHistoryCopyWithImpl<
  $Res,
  $Val extends WorkHourCalculationHistory
>
    implements $WorkHourCalculationHistoryCopyWith<$Res> {
  _$WorkHourCalculationHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkHourCalculationHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? dateRange = null,
    Object? holidays = freezed,
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
            dateRange:
                null == dateRange
                    ? _value.dateRange
                    : dateRange // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel,
            holidays:
                freezed == holidays
                    ? _value.holidays
                    : holidays // ignore: cast_nullable_to_non_nullable
                        as List<DateTime>?,
          )
          as $Val,
    );
  }

  /// Create a copy of WorkHourCalculationHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res> get dateRange {
    return $RangedTimeModelCopyWith<$Res>(_value.dateRange, (value) {
      return _then(_value.copyWith(dateRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkHourCalculationHistoryImplCopyWith<$Res>
    implements $WorkHourCalculationHistoryCopyWith<$Res> {
  factory _$$WorkHourCalculationHistoryImplCopyWith(
    _$WorkHourCalculationHistoryImpl value,
    $Res Function(_$WorkHourCalculationHistoryImpl) then,
  ) = __$$WorkHourCalculationHistoryImplCopyWithImpl<$Res>;
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
    RangedTimeModel dateRange,
    @JsonKey(
      toJson: Helpers.dateListToIsoJson,
      fromJson: Helpers.dateListFromStringJson,
    )
    List<DateTime>? holidays,
  });

  @override
  $RangedTimeModelCopyWith<$Res> get dateRange;
}

/// @nodoc
class __$$WorkHourCalculationHistoryImplCopyWithImpl<$Res>
    extends
        _$WorkHourCalculationHistoryCopyWithImpl<
          $Res,
          _$WorkHourCalculationHistoryImpl
        >
    implements _$$WorkHourCalculationHistoryImplCopyWith<$Res> {
  __$$WorkHourCalculationHistoryImplCopyWithImpl(
    _$WorkHourCalculationHistoryImpl _value,
    $Res Function(_$WorkHourCalculationHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkHourCalculationHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? dateRange = null,
    Object? holidays = freezed,
  }) {
    return _then(
      _$WorkHourCalculationHistoryImpl(
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
        dateRange:
            null == dateRange
                ? _value.dateRange
                : dateRange // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel,
        holidays:
            freezed == holidays
                ? _value._holidays
                : holidays // ignore: cast_nullable_to_non_nullable
                    as List<DateTime>?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorkHourCalculationHistoryImpl implements _WorkHourCalculationHistory {
  const _$WorkHourCalculationHistoryImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    required this.dateRange,
    @JsonKey(
      toJson: Helpers.dateListToIsoJson,
      fromJson: Helpers.dateListFromStringJson,
    )
    final List<DateTime>? holidays,
  }) : _holidays = holidays;

  factory _$WorkHourCalculationHistoryImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$WorkHourCalculationHistoryImplFromJson(json);

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
  final RangedTimeModel dateRange;
  final List<DateTime>? _holidays;
  @override
  @JsonKey(
    toJson: Helpers.dateListToIsoJson,
    fromJson: Helpers.dateListFromStringJson,
  )
  List<DateTime>? get holidays {
    final value = _holidays;
    if (value == null) return null;
    if (_holidays is EqualUnmodifiableListView) return _holidays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkHourCalculationHistory(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, dateRange: $dateRange, holidays: $holidays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkHourCalculationHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange) &&
            const DeepCollectionEquality().equals(other._holidays, _holidays));
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
    dateRange,
    const DeepCollectionEquality().hash(_holidays),
  );

  /// Create a copy of WorkHourCalculationHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkHourCalculationHistoryImplCopyWith<_$WorkHourCalculationHistoryImpl>
  get copyWith => __$$WorkHourCalculationHistoryImplCopyWithImpl<
    _$WorkHourCalculationHistoryImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkHourCalculationHistoryImplToJson(this);
  }
}

abstract class _WorkHourCalculationHistory
    implements WorkHourCalculationHistory {
  const factory _WorkHourCalculationHistory({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    required final RangedTimeModel dateRange,
    @JsonKey(
      toJson: Helpers.dateListToIsoJson,
      fromJson: Helpers.dateListFromStringJson,
    )
    final List<DateTime>? holidays,
  }) = _$WorkHourCalculationHistoryImpl;

  factory _WorkHourCalculationHistory.fromJson(Map<String, dynamic> json) =
      _$WorkHourCalculationHistoryImpl.fromJson;

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
  RangedTimeModel get dateRange;
  @override
  @JsonKey(
    toJson: Helpers.dateListToIsoJson,
    fromJson: Helpers.dateListFromStringJson,
  )
  List<DateTime>? get holidays;

  /// Create a copy of WorkHourCalculationHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkHourCalculationHistoryImplCopyWith<_$WorkHourCalculationHistoryImpl>
  get copyWith => throw _privateConstructorUsedError;
}
