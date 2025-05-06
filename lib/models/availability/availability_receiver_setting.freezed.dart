// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_receiver_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AvailabilityReceiverSetting _$AvailabilityReceiverSettingFromJson(
  Map<String, dynamic> json,
) {
  return _AvailabilityReceiverSetting.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityReceiverSetting {
  bool get showNotPreferedDayChecker => throw _privateConstructorUsedError;
  bool get useDailyComment => throw _privateConstructorUsedError;
  int get timeInterval => throw _privateConstructorUsedError;

  /// Serializes this AvailabilityReceiverSetting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailabilityReceiverSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityReceiverSettingCopyWith<AvailabilityReceiverSetting>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityReceiverSettingCopyWith<$Res> {
  factory $AvailabilityReceiverSettingCopyWith(
    AvailabilityReceiverSetting value,
    $Res Function(AvailabilityReceiverSetting) then,
  ) =
      _$AvailabilityReceiverSettingCopyWithImpl<
        $Res,
        AvailabilityReceiverSetting
      >;
  @useResult
  $Res call({
    bool showNotPreferedDayChecker,
    bool useDailyComment,
    int timeInterval,
  });
}

/// @nodoc
class _$AvailabilityReceiverSettingCopyWithImpl<
  $Res,
  $Val extends AvailabilityReceiverSetting
>
    implements $AvailabilityReceiverSettingCopyWith<$Res> {
  _$AvailabilityReceiverSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailabilityReceiverSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNotPreferedDayChecker = null,
    Object? useDailyComment = null,
    Object? timeInterval = null,
  }) {
    return _then(
      _value.copyWith(
            showNotPreferedDayChecker:
                null == showNotPreferedDayChecker
                    ? _value.showNotPreferedDayChecker
                    : showNotPreferedDayChecker // ignore: cast_nullable_to_non_nullable
                        as bool,
            useDailyComment:
                null == useDailyComment
                    ? _value.useDailyComment
                    : useDailyComment // ignore: cast_nullable_to_non_nullable
                        as bool,
            timeInterval:
                null == timeInterval
                    ? _value.timeInterval
                    : timeInterval // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvailabilityReceiverSettingImplCopyWith<$Res>
    implements $AvailabilityReceiverSettingCopyWith<$Res> {
  factory _$$AvailabilityReceiverSettingImplCopyWith(
    _$AvailabilityReceiverSettingImpl value,
    $Res Function(_$AvailabilityReceiverSettingImpl) then,
  ) = __$$AvailabilityReceiverSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool showNotPreferedDayChecker,
    bool useDailyComment,
    int timeInterval,
  });
}

/// @nodoc
class __$$AvailabilityReceiverSettingImplCopyWithImpl<$Res>
    extends
        _$AvailabilityReceiverSettingCopyWithImpl<
          $Res,
          _$AvailabilityReceiverSettingImpl
        >
    implements _$$AvailabilityReceiverSettingImplCopyWith<$Res> {
  __$$AvailabilityReceiverSettingImplCopyWithImpl(
    _$AvailabilityReceiverSettingImpl _value,
    $Res Function(_$AvailabilityReceiverSettingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailabilityReceiverSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNotPreferedDayChecker = null,
    Object? useDailyComment = null,
    Object? timeInterval = null,
  }) {
    return _then(
      _$AvailabilityReceiverSettingImpl(
        showNotPreferedDayChecker:
            null == showNotPreferedDayChecker
                ? _value.showNotPreferedDayChecker
                : showNotPreferedDayChecker // ignore: cast_nullable_to_non_nullable
                    as bool,
        useDailyComment:
            null == useDailyComment
                ? _value.useDailyComment
                : useDailyComment // ignore: cast_nullable_to_non_nullable
                    as bool,
        timeInterval:
            null == timeInterval
                ? _value.timeInterval
                : timeInterval // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityReceiverSettingImpl
    implements _AvailabilityReceiverSetting {
  const _$AvailabilityReceiverSettingImpl({
    required this.showNotPreferedDayChecker,
    required this.useDailyComment,
    required this.timeInterval,
  });

  factory _$AvailabilityReceiverSettingImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AvailabilityReceiverSettingImplFromJson(json);

  @override
  final bool showNotPreferedDayChecker;
  @override
  final bool useDailyComment;
  @override
  final int timeInterval;

  @override
  String toString() {
    return 'AvailabilityReceiverSetting(showNotPreferedDayChecker: $showNotPreferedDayChecker, useDailyComment: $useDailyComment, timeInterval: $timeInterval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityReceiverSettingImpl &&
            (identical(
                  other.showNotPreferedDayChecker,
                  showNotPreferedDayChecker,
                ) ||
                other.showNotPreferedDayChecker == showNotPreferedDayChecker) &&
            (identical(other.useDailyComment, useDailyComment) ||
                other.useDailyComment == useDailyComment) &&
            (identical(other.timeInterval, timeInterval) ||
                other.timeInterval == timeInterval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    showNotPreferedDayChecker,
    useDailyComment,
    timeInterval,
  );

  /// Create a copy of AvailabilityReceiverSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityReceiverSettingImplCopyWith<_$AvailabilityReceiverSettingImpl>
  get copyWith => __$$AvailabilityReceiverSettingImplCopyWithImpl<
    _$AvailabilityReceiverSettingImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityReceiverSettingImplToJson(this);
  }
}

abstract class _AvailabilityReceiverSetting
    implements AvailabilityReceiverSetting {
  const factory _AvailabilityReceiverSetting({
    required final bool showNotPreferedDayChecker,
    required final bool useDailyComment,
    required final int timeInterval,
  }) = _$AvailabilityReceiverSettingImpl;

  factory _AvailabilityReceiverSetting.fromJson(Map<String, dynamic> json) =
      _$AvailabilityReceiverSettingImpl.fromJson;

  @override
  bool get showNotPreferedDayChecker;
  @override
  bool get useDailyComment;
  @override
  int get timeInterval;

  /// Create a copy of AvailabilityReceiverSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailabilityReceiverSettingImplCopyWith<_$AvailabilityReceiverSettingImpl>
  get copyWith => throw _privateConstructorUsedError;
}
