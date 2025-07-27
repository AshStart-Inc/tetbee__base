// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_confirm_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScheduleConfirmHistory _$ScheduleConfirmHistoryFromJson(
  Map<String, dynamic> json,
) {
  return _ScheduleConfirmHistory.fromJson(json);
}

/// @nodoc
mixin _$ScheduleConfirmHistory {
  String? get dailyScheduleId => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get updatedReason => throw _privateConstructorUsedError;
  UpdatedRangedTimeModel? get signOutTimeUpdateTimeLog =>
      throw _privateConstructorUsedError;
  UpdatedRangedTimeModel? get breakTimeUpdateTimeLog =>
      throw _privateConstructorUsedError;

  /// Serializes this ScheduleConfirmHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleConfirmHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleConfirmHistoryCopyWith<ScheduleConfirmHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleConfirmHistoryCopyWith<$Res> {
  factory $ScheduleConfirmHistoryCopyWith(
    ScheduleConfirmHistory value,
    $Res Function(ScheduleConfirmHistory) then,
  ) = _$ScheduleConfirmHistoryCopyWithImpl<$Res, ScheduleConfirmHistory>;
  @useResult
  $Res call({
    String? dailyScheduleId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    String? comment,
    String? updatedReason,
    UpdatedRangedTimeModel? signOutTimeUpdateTimeLog,
    UpdatedRangedTimeModel? breakTimeUpdateTimeLog,
  });

  $UpdatedRangedTimeModelCopyWith<$Res>? get signOutTimeUpdateTimeLog;
  $UpdatedRangedTimeModelCopyWith<$Res>? get breakTimeUpdateTimeLog;
}

/// @nodoc
class _$ScheduleConfirmHistoryCopyWithImpl<
  $Res,
  $Val extends ScheduleConfirmHistory
>
    implements $ScheduleConfirmHistoryCopyWith<$Res> {
  _$ScheduleConfirmHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleConfirmHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyScheduleId = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? comment = freezed,
    Object? updatedReason = freezed,
    Object? signOutTimeUpdateTimeLog = freezed,
    Object? breakTimeUpdateTimeLog = freezed,
  }) {
    return _then(
      _value.copyWith(
            dailyScheduleId:
                freezed == dailyScheduleId
                    ? _value.dailyScheduleId
                    : dailyScheduleId // ignore: cast_nullable_to_non_nullable
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
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            updatedReason:
                freezed == updatedReason
                    ? _value.updatedReason
                    : updatedReason // ignore: cast_nullable_to_non_nullable
                        as String?,
            signOutTimeUpdateTimeLog:
                freezed == signOutTimeUpdateTimeLog
                    ? _value.signOutTimeUpdateTimeLog
                    : signOutTimeUpdateTimeLog // ignore: cast_nullable_to_non_nullable
                        as UpdatedRangedTimeModel?,
            breakTimeUpdateTimeLog:
                freezed == breakTimeUpdateTimeLog
                    ? _value.breakTimeUpdateTimeLog
                    : breakTimeUpdateTimeLog // ignore: cast_nullable_to_non_nullable
                        as UpdatedRangedTimeModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of ScheduleConfirmHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdatedRangedTimeModelCopyWith<$Res>? get signOutTimeUpdateTimeLog {
    if (_value.signOutTimeUpdateTimeLog == null) {
      return null;
    }

    return $UpdatedRangedTimeModelCopyWith<$Res>(
      _value.signOutTimeUpdateTimeLog!,
      (value) {
        return _then(_value.copyWith(signOutTimeUpdateTimeLog: value) as $Val);
      },
    );
  }

  /// Create a copy of ScheduleConfirmHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdatedRangedTimeModelCopyWith<$Res>? get breakTimeUpdateTimeLog {
    if (_value.breakTimeUpdateTimeLog == null) {
      return null;
    }

    return $UpdatedRangedTimeModelCopyWith<$Res>(
      _value.breakTimeUpdateTimeLog!,
      (value) {
        return _then(_value.copyWith(breakTimeUpdateTimeLog: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$ScheduleConfirmHistoryImplCopyWith<$Res>
    implements $ScheduleConfirmHistoryCopyWith<$Res> {
  factory _$$ScheduleConfirmHistoryImplCopyWith(
    _$ScheduleConfirmHistoryImpl value,
    $Res Function(_$ScheduleConfirmHistoryImpl) then,
  ) = __$$ScheduleConfirmHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? dailyScheduleId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    String? comment,
    String? updatedReason,
    UpdatedRangedTimeModel? signOutTimeUpdateTimeLog,
    UpdatedRangedTimeModel? breakTimeUpdateTimeLog,
  });

  @override
  $UpdatedRangedTimeModelCopyWith<$Res>? get signOutTimeUpdateTimeLog;
  @override
  $UpdatedRangedTimeModelCopyWith<$Res>? get breakTimeUpdateTimeLog;
}

/// @nodoc
class __$$ScheduleConfirmHistoryImplCopyWithImpl<$Res>
    extends
        _$ScheduleConfirmHistoryCopyWithImpl<$Res, _$ScheduleConfirmHistoryImpl>
    implements _$$ScheduleConfirmHistoryImplCopyWith<$Res> {
  __$$ScheduleConfirmHistoryImplCopyWithImpl(
    _$ScheduleConfirmHistoryImpl _value,
    $Res Function(_$ScheduleConfirmHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScheduleConfirmHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyScheduleId = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? comment = freezed,
    Object? updatedReason = freezed,
    Object? signOutTimeUpdateTimeLog = freezed,
    Object? breakTimeUpdateTimeLog = freezed,
  }) {
    return _then(
      _$ScheduleConfirmHistoryImpl(
        dailyScheduleId:
            freezed == dailyScheduleId
                ? _value.dailyScheduleId
                : dailyScheduleId // ignore: cast_nullable_to_non_nullable
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
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        updatedReason:
            freezed == updatedReason
                ? _value.updatedReason
                : updatedReason // ignore: cast_nullable_to_non_nullable
                    as String?,
        signOutTimeUpdateTimeLog:
            freezed == signOutTimeUpdateTimeLog
                ? _value.signOutTimeUpdateTimeLog
                : signOutTimeUpdateTimeLog // ignore: cast_nullable_to_non_nullable
                    as UpdatedRangedTimeModel?,
        breakTimeUpdateTimeLog:
            freezed == breakTimeUpdateTimeLog
                ? _value.breakTimeUpdateTimeLog
                : breakTimeUpdateTimeLog // ignore: cast_nullable_to_non_nullable
                    as UpdatedRangedTimeModel?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ScheduleConfirmHistoryImpl implements _ScheduleConfirmHistory {
  const _$ScheduleConfirmHistoryImpl({
    this.dailyScheduleId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    this.comment,
    this.updatedReason,
    this.signOutTimeUpdateTimeLog,
    this.breakTimeUpdateTimeLog,
  });

  factory _$ScheduleConfirmHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleConfirmHistoryImplFromJson(json);

  @override
  final String? dailyScheduleId;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? createdAt;
  @override
  @JsonKey()
  final String createdBy;
  @override
  final String? comment;
  @override
  final String? updatedReason;
  @override
  final UpdatedRangedTimeModel? signOutTimeUpdateTimeLog;
  @override
  final UpdatedRangedTimeModel? breakTimeUpdateTimeLog;

  @override
  String toString() {
    return 'ScheduleConfirmHistory(dailyScheduleId: $dailyScheduleId, createdAt: $createdAt, createdBy: $createdBy, comment: $comment, updatedReason: $updatedReason, signOutTimeUpdateTimeLog: $signOutTimeUpdateTimeLog, breakTimeUpdateTimeLog: $breakTimeUpdateTimeLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleConfirmHistoryImpl &&
            (identical(other.dailyScheduleId, dailyScheduleId) ||
                other.dailyScheduleId == dailyScheduleId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.updatedReason, updatedReason) ||
                other.updatedReason == updatedReason) &&
            (identical(
                  other.signOutTimeUpdateTimeLog,
                  signOutTimeUpdateTimeLog,
                ) ||
                other.signOutTimeUpdateTimeLog == signOutTimeUpdateTimeLog) &&
            (identical(other.breakTimeUpdateTimeLog, breakTimeUpdateTimeLog) ||
                other.breakTimeUpdateTimeLog == breakTimeUpdateTimeLog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dailyScheduleId,
    createdAt,
    createdBy,
    comment,
    updatedReason,
    signOutTimeUpdateTimeLog,
    breakTimeUpdateTimeLog,
  );

  /// Create a copy of ScheduleConfirmHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleConfirmHistoryImplCopyWith<_$ScheduleConfirmHistoryImpl>
  get copyWith =>
      __$$ScheduleConfirmHistoryImplCopyWithImpl<_$ScheduleConfirmHistoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleConfirmHistoryImplToJson(this);
  }
}

abstract class _ScheduleConfirmHistory implements ScheduleConfirmHistory {
  const factory _ScheduleConfirmHistory({
    final String? dailyScheduleId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    final String? comment,
    final String? updatedReason,
    final UpdatedRangedTimeModel? signOutTimeUpdateTimeLog,
    final UpdatedRangedTimeModel? breakTimeUpdateTimeLog,
  }) = _$ScheduleConfirmHistoryImpl;

  factory _ScheduleConfirmHistory.fromJson(Map<String, dynamic> json) =
      _$ScheduleConfirmHistoryImpl.fromJson;

  @override
  String? get dailyScheduleId;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  String? get comment;
  @override
  String? get updatedReason;
  @override
  UpdatedRangedTimeModel? get signOutTimeUpdateTimeLog;
  @override
  UpdatedRangedTimeModel? get breakTimeUpdateTimeLog;

  /// Create a copy of ScheduleConfirmHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleConfirmHistoryImplCopyWith<_$ScheduleConfirmHistoryImpl>
  get copyWith => throw _privateConstructorUsedError;
}
