// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyAvailability _$DailyAvailabilityFromJson(Map<String, dynamic> json) {
  return _DailyAvailability.fromJson(json);
}

/// @nodoc
mixin _$DailyAvailability {
  int get weekDay => throw _privateConstructorUsedError;
  String? get avReceiverId => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get date => throw _privateConstructorUsedError; //this value will be used for ranged date availaibility type
  String? get comment => throw _privateConstructorUsedError;
  bool? get canWorkButNotPreferToWork => throw _privateConstructorUsedError;
  RangedTimeModel get timeRange => throw _privateConstructorUsedError;

  /// Serializes this DailyAvailability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyAvailabilityCopyWith<DailyAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyAvailabilityCopyWith<$Res> {
  factory $DailyAvailabilityCopyWith(
    DailyAvailability value,
    $Res Function(DailyAvailability) then,
  ) = _$DailyAvailabilityCopyWithImpl<$Res, DailyAvailability>;
  @useResult
  $Res call({
    int weekDay,
    String? avReceiverId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? date,
    String? comment,
    bool? canWorkButNotPreferToWork,
    RangedTimeModel timeRange,
  });

  $RangedTimeModelCopyWith<$Res> get timeRange;
}

/// @nodoc
class _$DailyAvailabilityCopyWithImpl<$Res, $Val extends DailyAvailability>
    implements $DailyAvailabilityCopyWith<$Res> {
  _$DailyAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = null,
    Object? avReceiverId = freezed,
    Object? date = freezed,
    Object? comment = freezed,
    Object? canWorkButNotPreferToWork = freezed,
    Object? timeRange = null,
  }) {
    return _then(
      _value.copyWith(
            weekDay:
                null == weekDay
                    ? _value.weekDay
                    : weekDay // ignore: cast_nullable_to_non_nullable
                        as int,
            avReceiverId:
                freezed == avReceiverId
                    ? _value.avReceiverId
                    : avReceiverId // ignore: cast_nullable_to_non_nullable
                        as String?,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            canWorkButNotPreferToWork:
                freezed == canWorkButNotPreferToWork
                    ? _value.canWorkButNotPreferToWork
                    : canWorkButNotPreferToWork // ignore: cast_nullable_to_non_nullable
                        as bool?,
            timeRange:
                null == timeRange
                    ? _value.timeRange
                    : timeRange // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel,
          )
          as $Val,
    );
  }

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res> get timeRange {
    return $RangedTimeModelCopyWith<$Res>(_value.timeRange, (value) {
      return _then(_value.copyWith(timeRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyAvailabilityImplCopyWith<$Res>
    implements $DailyAvailabilityCopyWith<$Res> {
  factory _$$DailyAvailabilityImplCopyWith(
    _$DailyAvailabilityImpl value,
    $Res Function(_$DailyAvailabilityImpl) then,
  ) = __$$DailyAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int weekDay,
    String? avReceiverId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? date,
    String? comment,
    bool? canWorkButNotPreferToWork,
    RangedTimeModel timeRange,
  });

  @override
  $RangedTimeModelCopyWith<$Res> get timeRange;
}

/// @nodoc
class __$$DailyAvailabilityImplCopyWithImpl<$Res>
    extends _$DailyAvailabilityCopyWithImpl<$Res, _$DailyAvailabilityImpl>
    implements _$$DailyAvailabilityImplCopyWith<$Res> {
  __$$DailyAvailabilityImplCopyWithImpl(
    _$DailyAvailabilityImpl _value,
    $Res Function(_$DailyAvailabilityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = null,
    Object? avReceiverId = freezed,
    Object? date = freezed,
    Object? comment = freezed,
    Object? canWorkButNotPreferToWork = freezed,
    Object? timeRange = null,
  }) {
    return _then(
      _$DailyAvailabilityImpl(
        weekDay:
            null == weekDay
                ? _value.weekDay
                : weekDay // ignore: cast_nullable_to_non_nullable
                    as int,
        avReceiverId:
            freezed == avReceiverId
                ? _value.avReceiverId
                : avReceiverId // ignore: cast_nullable_to_non_nullable
                    as String?,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        canWorkButNotPreferToWork:
            freezed == canWorkButNotPreferToWork
                ? _value.canWorkButNotPreferToWork
                : canWorkButNotPreferToWork // ignore: cast_nullable_to_non_nullable
                    as bool?,
        timeRange:
            null == timeRange
                ? _value.timeRange
                : timeRange // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DailyAvailabilityImpl implements _DailyAvailability {
  const _$DailyAvailabilityImpl({
    required this.weekDay,
    this.avReceiverId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    this.date,
    this.comment,
    this.canWorkButNotPreferToWork = false,
    required this.timeRange,
  });

  factory _$DailyAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyAvailabilityImplFromJson(json);

  @override
  final int weekDay;
  @override
  final String? avReceiverId;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  final DateTime? date;
  //this value will be used for ranged date availaibility type
  @override
  final String? comment;
  @override
  @JsonKey()
  final bool? canWorkButNotPreferToWork;
  @override
  final RangedTimeModel timeRange;

  @override
  String toString() {
    return 'DailyAvailability(weekDay: $weekDay, avReceiverId: $avReceiverId, date: $date, comment: $comment, canWorkButNotPreferToWork: $canWorkButNotPreferToWork, timeRange: $timeRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyAvailabilityImpl &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.avReceiverId, avReceiverId) ||
                other.avReceiverId == avReceiverId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(
                  other.canWorkButNotPreferToWork,
                  canWorkButNotPreferToWork,
                ) ||
                other.canWorkButNotPreferToWork == canWorkButNotPreferToWork) &&
            (identical(other.timeRange, timeRange) ||
                other.timeRange == timeRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    weekDay,
    avReceiverId,
    date,
    comment,
    canWorkButNotPreferToWork,
    timeRange,
  );

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyAvailabilityImplCopyWith<_$DailyAvailabilityImpl> get copyWith =>
      __$$DailyAvailabilityImplCopyWithImpl<_$DailyAvailabilityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyAvailabilityImplToJson(this);
  }
}

abstract class _DailyAvailability implements DailyAvailability {
  const factory _DailyAvailability({
    required final int weekDay,
    final String? avReceiverId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    final DateTime? date,
    final String? comment,
    final bool? canWorkButNotPreferToWork,
    required final RangedTimeModel timeRange,
  }) = _$DailyAvailabilityImpl;

  factory _DailyAvailability.fromJson(Map<String, dynamic> json) =
      _$DailyAvailabilityImpl.fromJson;

  @override
  int get weekDay;
  @override
  String? get avReceiverId;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get date; //this value will be used for ranged date availaibility type
  @override
  String? get comment;
  @override
  bool? get canWorkButNotPreferToWork;
  @override
  RangedTimeModel get timeRange;

  /// Create a copy of DailyAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyAvailabilityImplCopyWith<_$DailyAvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
