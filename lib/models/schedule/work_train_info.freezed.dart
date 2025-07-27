// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_train_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkTrainInfo _$WorkTrainInfoFromJson(Map<String, dynamic> json) {
  return _WorkTrainInfo.fromJson(json);
}

/// @nodoc
mixin _$WorkTrainInfo {
  String get trainUserId => throw _privateConstructorUsedError;
  String? get trainDailyScheduleId => throw _privateConstructorUsedError;

  /// Serializes this WorkTrainInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkTrainInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkTrainInfoCopyWith<WorkTrainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTrainInfoCopyWith<$Res> {
  factory $WorkTrainInfoCopyWith(
    WorkTrainInfo value,
    $Res Function(WorkTrainInfo) then,
  ) = _$WorkTrainInfoCopyWithImpl<$Res, WorkTrainInfo>;
  @useResult
  $Res call({String trainUserId, String? trainDailyScheduleId});
}

/// @nodoc
class _$WorkTrainInfoCopyWithImpl<$Res, $Val extends WorkTrainInfo>
    implements $WorkTrainInfoCopyWith<$Res> {
  _$WorkTrainInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkTrainInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainUserId = null,
    Object? trainDailyScheduleId = freezed,
  }) {
    return _then(
      _value.copyWith(
            trainUserId:
                null == trainUserId
                    ? _value.trainUserId
                    : trainUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            trainDailyScheduleId:
                freezed == trainDailyScheduleId
                    ? _value.trainDailyScheduleId
                    : trainDailyScheduleId // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkTrainInfoImplCopyWith<$Res>
    implements $WorkTrainInfoCopyWith<$Res> {
  factory _$$WorkTrainInfoImplCopyWith(
    _$WorkTrainInfoImpl value,
    $Res Function(_$WorkTrainInfoImpl) then,
  ) = __$$WorkTrainInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trainUserId, String? trainDailyScheduleId});
}

/// @nodoc
class __$$WorkTrainInfoImplCopyWithImpl<$Res>
    extends _$WorkTrainInfoCopyWithImpl<$Res, _$WorkTrainInfoImpl>
    implements _$$WorkTrainInfoImplCopyWith<$Res> {
  __$$WorkTrainInfoImplCopyWithImpl(
    _$WorkTrainInfoImpl _value,
    $Res Function(_$WorkTrainInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkTrainInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainUserId = null,
    Object? trainDailyScheduleId = freezed,
  }) {
    return _then(
      _$WorkTrainInfoImpl(
        trainUserId:
            null == trainUserId
                ? _value.trainUserId
                : trainUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        trainDailyScheduleId:
            freezed == trainDailyScheduleId
                ? _value.trainDailyScheduleId
                : trainDailyScheduleId // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkTrainInfoImpl implements _WorkTrainInfo {
  const _$WorkTrainInfoImpl({
    required this.trainUserId,
    this.trainDailyScheduleId,
  });

  factory _$WorkTrainInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkTrainInfoImplFromJson(json);

  @override
  final String trainUserId;
  @override
  final String? trainDailyScheduleId;

  @override
  String toString() {
    return 'WorkTrainInfo(trainUserId: $trainUserId, trainDailyScheduleId: $trainDailyScheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkTrainInfoImpl &&
            (identical(other.trainUserId, trainUserId) ||
                other.trainUserId == trainUserId) &&
            (identical(other.trainDailyScheduleId, trainDailyScheduleId) ||
                other.trainDailyScheduleId == trainDailyScheduleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, trainUserId, trainDailyScheduleId);

  /// Create a copy of WorkTrainInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkTrainInfoImplCopyWith<_$WorkTrainInfoImpl> get copyWith =>
      __$$WorkTrainInfoImplCopyWithImpl<_$WorkTrainInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkTrainInfoImplToJson(this);
  }
}

abstract class _WorkTrainInfo implements WorkTrainInfo {
  const factory _WorkTrainInfo({
    required final String trainUserId,
    final String? trainDailyScheduleId,
  }) = _$WorkTrainInfoImpl;

  factory _WorkTrainInfo.fromJson(Map<String, dynamic> json) =
      _$WorkTrainInfoImpl.fromJson;

  @override
  String get trainUserId;
  @override
  String? get trainDailyScheduleId;

  /// Create a copy of WorkTrainInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkTrainInfoImplCopyWith<_$WorkTrainInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
