// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailySchedule _$DailyScheduleFromJson(Map<String, dynamic> json) {
  return _DailySchedule.fromJson(json);
}

/// @nodoc
mixin _$DailySchedule {
  String? get id => throw _privateConstructorUsedError;
  RangedTimeModel? get scheduleTimeRange => throw _privateConstructorUsedError;
  RangedTimeModel? get breakTimeRange => throw _privateConstructorUsedError;
  RangedTimeModel? get signedOutTimeRange => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get signedOutAt => throw _privateConstructorUsedError;
  String get signOutComment => throw _privateConstructorUsedError;
  String get positionCode => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get isHalfDay => throw _privateConstructorUsedError;
  List<WorkTrainInfo> get trainer => throw _privateConstructorUsedError;
  List<WorkTrainInfo> get trainee => throw _privateConstructorUsedError;

  /// Serializes this DailySchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailySchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyScheduleCopyWith<DailySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyScheduleCopyWith<$Res> {
  factory $DailyScheduleCopyWith(
    DailySchedule value,
    $Res Function(DailySchedule) then,
  ) = _$DailyScheduleCopyWithImpl<$Res, DailySchedule>;
  @useResult
  $Res call({
    String? id,
    RangedTimeModel? scheduleTimeRange,
    RangedTimeModel? breakTimeRange,
    RangedTimeModel? signedOutTimeRange,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? signedOutAt,
    String signOutComment,
    String positionCode,
    String comment,
    bool isHalfDay,
    List<WorkTrainInfo> trainer,
    List<WorkTrainInfo> trainee,
  });

  $RangedTimeModelCopyWith<$Res>? get scheduleTimeRange;
  $RangedTimeModelCopyWith<$Res>? get breakTimeRange;
  $RangedTimeModelCopyWith<$Res>? get signedOutTimeRange;
}

/// @nodoc
class _$DailyScheduleCopyWithImpl<$Res, $Val extends DailySchedule>
    implements $DailyScheduleCopyWith<$Res> {
  _$DailyScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailySchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scheduleTimeRange = freezed,
    Object? breakTimeRange = freezed,
    Object? signedOutTimeRange = freezed,
    Object? signedOutAt = freezed,
    Object? signOutComment = null,
    Object? positionCode = null,
    Object? comment = null,
    Object? isHalfDay = null,
    Object? trainer = null,
    Object? trainee = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            scheduleTimeRange:
                freezed == scheduleTimeRange
                    ? _value.scheduleTimeRange
                    : scheduleTimeRange // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel?,
            breakTimeRange:
                freezed == breakTimeRange
                    ? _value.breakTimeRange
                    : breakTimeRange // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel?,
            signedOutTimeRange:
                freezed == signedOutTimeRange
                    ? _value.signedOutTimeRange
                    : signedOutTimeRange // ignore: cast_nullable_to_non_nullable
                        as RangedTimeModel?,
            signedOutAt:
                freezed == signedOutAt
                    ? _value.signedOutAt
                    : signedOutAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            signOutComment:
                null == signOutComment
                    ? _value.signOutComment
                    : signOutComment // ignore: cast_nullable_to_non_nullable
                        as String,
            positionCode:
                null == positionCode
                    ? _value.positionCode
                    : positionCode // ignore: cast_nullable_to_non_nullable
                        as String,
            comment:
                null == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String,
            isHalfDay:
                null == isHalfDay
                    ? _value.isHalfDay
                    : isHalfDay // ignore: cast_nullable_to_non_nullable
                        as bool,
            trainer:
                null == trainer
                    ? _value.trainer
                    : trainer // ignore: cast_nullable_to_non_nullable
                        as List<WorkTrainInfo>,
            trainee:
                null == trainee
                    ? _value.trainee
                    : trainee // ignore: cast_nullable_to_non_nullable
                        as List<WorkTrainInfo>,
          )
          as $Val,
    );
  }

  /// Create a copy of DailySchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res>? get scheduleTimeRange {
    if (_value.scheduleTimeRange == null) {
      return null;
    }

    return $RangedTimeModelCopyWith<$Res>(_value.scheduleTimeRange!, (value) {
      return _then(_value.copyWith(scheduleTimeRange: value) as $Val);
    });
  }

  /// Create a copy of DailySchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res>? get breakTimeRange {
    if (_value.breakTimeRange == null) {
      return null;
    }

    return $RangedTimeModelCopyWith<$Res>(_value.breakTimeRange!, (value) {
      return _then(_value.copyWith(breakTimeRange: value) as $Val);
    });
  }

  /// Create a copy of DailySchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangedTimeModelCopyWith<$Res>? get signedOutTimeRange {
    if (_value.signedOutTimeRange == null) {
      return null;
    }

    return $RangedTimeModelCopyWith<$Res>(_value.signedOutTimeRange!, (value) {
      return _then(_value.copyWith(signedOutTimeRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyScheduleImplCopyWith<$Res>
    implements $DailyScheduleCopyWith<$Res> {
  factory _$$DailyScheduleImplCopyWith(
    _$DailyScheduleImpl value,
    $Res Function(_$DailyScheduleImpl) then,
  ) = __$$DailyScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    RangedTimeModel? scheduleTimeRange,
    RangedTimeModel? breakTimeRange,
    RangedTimeModel? signedOutTimeRange,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? signedOutAt,
    String signOutComment,
    String positionCode,
    String comment,
    bool isHalfDay,
    List<WorkTrainInfo> trainer,
    List<WorkTrainInfo> trainee,
  });

  @override
  $RangedTimeModelCopyWith<$Res>? get scheduleTimeRange;
  @override
  $RangedTimeModelCopyWith<$Res>? get breakTimeRange;
  @override
  $RangedTimeModelCopyWith<$Res>? get signedOutTimeRange;
}

/// @nodoc
class __$$DailyScheduleImplCopyWithImpl<$Res>
    extends _$DailyScheduleCopyWithImpl<$Res, _$DailyScheduleImpl>
    implements _$$DailyScheduleImplCopyWith<$Res> {
  __$$DailyScheduleImplCopyWithImpl(
    _$DailyScheduleImpl _value,
    $Res Function(_$DailyScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailySchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scheduleTimeRange = freezed,
    Object? breakTimeRange = freezed,
    Object? signedOutTimeRange = freezed,
    Object? signedOutAt = freezed,
    Object? signOutComment = null,
    Object? positionCode = null,
    Object? comment = null,
    Object? isHalfDay = null,
    Object? trainer = null,
    Object? trainee = null,
  }) {
    return _then(
      _$DailyScheduleImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        scheduleTimeRange:
            freezed == scheduleTimeRange
                ? _value.scheduleTimeRange
                : scheduleTimeRange // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel?,
        breakTimeRange:
            freezed == breakTimeRange
                ? _value.breakTimeRange
                : breakTimeRange // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel?,
        signedOutTimeRange:
            freezed == signedOutTimeRange
                ? _value.signedOutTimeRange
                : signedOutTimeRange // ignore: cast_nullable_to_non_nullable
                    as RangedTimeModel?,
        signedOutAt:
            freezed == signedOutAt
                ? _value.signedOutAt
                : signedOutAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        signOutComment:
            null == signOutComment
                ? _value.signOutComment
                : signOutComment // ignore: cast_nullable_to_non_nullable
                    as String,
        positionCode:
            null == positionCode
                ? _value.positionCode
                : positionCode // ignore: cast_nullable_to_non_nullable
                    as String,
        comment:
            null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String,
        isHalfDay:
            null == isHalfDay
                ? _value.isHalfDay
                : isHalfDay // ignore: cast_nullable_to_non_nullable
                    as bool,
        trainer:
            null == trainer
                ? _value._trainer
                : trainer // ignore: cast_nullable_to_non_nullable
                    as List<WorkTrainInfo>,
        trainee:
            null == trainee
                ? _value._trainee
                : trainee // ignore: cast_nullable_to_non_nullable
                    as List<WorkTrainInfo>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DailyScheduleImpl implements _DailySchedule {
  const _$DailyScheduleImpl({
    this.id,
    this.scheduleTimeRange,
    this.breakTimeRange,
    this.signedOutTimeRange,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.signedOutAt,
    this.signOutComment = '',
    this.positionCode = '',
    this.comment = '',
    this.isHalfDay = false,
    final List<WorkTrainInfo> trainer = const [],
    final List<WorkTrainInfo> trainee = const [],
  }) : _trainer = trainer,
       _trainee = trainee;

  factory _$DailyScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyScheduleImplFromJson(json);

  @override
  final String? id;
  @override
  final RangedTimeModel? scheduleTimeRange;
  @override
  final RangedTimeModel? breakTimeRange;
  @override
  final RangedTimeModel? signedOutTimeRange;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? signedOutAt;
  @override
  @JsonKey()
  final String signOutComment;
  @override
  @JsonKey()
  final String positionCode;
  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final bool isHalfDay;
  final List<WorkTrainInfo> _trainer;
  @override
  @JsonKey()
  List<WorkTrainInfo> get trainer {
    if (_trainer is EqualUnmodifiableListView) return _trainer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainer);
  }

  final List<WorkTrainInfo> _trainee;
  @override
  @JsonKey()
  List<WorkTrainInfo> get trainee {
    if (_trainee is EqualUnmodifiableListView) return _trainee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainee);
  }

  @override
  String toString() {
    return 'DailySchedule(id: $id, scheduleTimeRange: $scheduleTimeRange, breakTimeRange: $breakTimeRange, signedOutTimeRange: $signedOutTimeRange, signedOutAt: $signedOutAt, signOutComment: $signOutComment, positionCode: $positionCode, comment: $comment, isHalfDay: $isHalfDay, trainer: $trainer, trainee: $trainee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scheduleTimeRange, scheduleTimeRange) ||
                other.scheduleTimeRange == scheduleTimeRange) &&
            (identical(other.breakTimeRange, breakTimeRange) ||
                other.breakTimeRange == breakTimeRange) &&
            (identical(other.signedOutTimeRange, signedOutTimeRange) ||
                other.signedOutTimeRange == signedOutTimeRange) &&
            (identical(other.signedOutAt, signedOutAt) ||
                other.signedOutAt == signedOutAt) &&
            (identical(other.signOutComment, signOutComment) ||
                other.signOutComment == signOutComment) &&
            (identical(other.positionCode, positionCode) ||
                other.positionCode == positionCode) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isHalfDay, isHalfDay) ||
                other.isHalfDay == isHalfDay) &&
            const DeepCollectionEquality().equals(other._trainer, _trainer) &&
            const DeepCollectionEquality().equals(other._trainee, _trainee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    scheduleTimeRange,
    breakTimeRange,
    signedOutTimeRange,
    signedOutAt,
    signOutComment,
    positionCode,
    comment,
    isHalfDay,
    const DeepCollectionEquality().hash(_trainer),
    const DeepCollectionEquality().hash(_trainee),
  );

  /// Create a copy of DailySchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyScheduleImplCopyWith<_$DailyScheduleImpl> get copyWith =>
      __$$DailyScheduleImplCopyWithImpl<_$DailyScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyScheduleImplToJson(this);
  }
}

abstract class _DailySchedule implements DailySchedule {
  const factory _DailySchedule({
    final String? id,
    final RangedTimeModel? scheduleTimeRange,
    final RangedTimeModel? breakTimeRange,
    final RangedTimeModel? signedOutTimeRange,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? signedOutAt,
    final String signOutComment,
    final String positionCode,
    final String comment,
    final bool isHalfDay,
    final List<WorkTrainInfo> trainer,
    final List<WorkTrainInfo> trainee,
  }) = _$DailyScheduleImpl;

  factory _DailySchedule.fromJson(Map<String, dynamic> json) =
      _$DailyScheduleImpl.fromJson;

  @override
  String? get id;
  @override
  RangedTimeModel? get scheduleTimeRange;
  @override
  RangedTimeModel? get breakTimeRange;
  @override
  RangedTimeModel? get signedOutTimeRange;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get signedOutAt;
  @override
  String get signOutComment;
  @override
  String get positionCode;
  @override
  String get comment;
  @override
  bool get isHalfDay;
  @override
  List<WorkTrainInfo> get trainer;
  @override
  List<WorkTrainInfo> get trainee;

  /// Create a copy of DailySchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyScheduleImplCopyWith<_$DailyScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
