// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp_user_availabilities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TempUserAvailabilities _$TempUserAvailabilitiesFromJson(
  Map<String, dynamic> json,
) {
  return _TempUserAvailabilities.fromJson(json);
}

/// @nodoc
mixin _$TempUserAvailabilities {
  String? get id => throw _privateConstructorUsedError;
  List<DailyAvailability> get dailyAvailabilityTimeRange =>
      throw _privateConstructorUsedError;
  AvailabilityReceiverSetting? get availabilityReceiverDefaultSetting =>
      throw _privateConstructorUsedError;

  /// Serializes this TempUserAvailabilities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TempUserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempUserAvailabilitiesCopyWith<TempUserAvailabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempUserAvailabilitiesCopyWith<$Res> {
  factory $TempUserAvailabilitiesCopyWith(
    TempUserAvailabilities value,
    $Res Function(TempUserAvailabilities) then,
  ) = _$TempUserAvailabilitiesCopyWithImpl<$Res, TempUserAvailabilities>;
  @useResult
  $Res call({
    String? id,
    List<DailyAvailability> dailyAvailabilityTimeRange,
    AvailabilityReceiverSetting? availabilityReceiverDefaultSetting,
  });

  $AvailabilityReceiverSettingCopyWith<$Res>?
  get availabilityReceiverDefaultSetting;
}

/// @nodoc
class _$TempUserAvailabilitiesCopyWithImpl<
  $Res,
  $Val extends TempUserAvailabilities
>
    implements $TempUserAvailabilitiesCopyWith<$Res> {
  _$TempUserAvailabilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempUserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dailyAvailabilityTimeRange = null,
    Object? availabilityReceiverDefaultSetting = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            dailyAvailabilityTimeRange:
                null == dailyAvailabilityTimeRange
                    ? _value.dailyAvailabilityTimeRange
                    : dailyAvailabilityTimeRange // ignore: cast_nullable_to_non_nullable
                        as List<DailyAvailability>,
            availabilityReceiverDefaultSetting:
                freezed == availabilityReceiverDefaultSetting
                    ? _value.availabilityReceiverDefaultSetting
                    : availabilityReceiverDefaultSetting // ignore: cast_nullable_to_non_nullable
                        as AvailabilityReceiverSetting?,
          )
          as $Val,
    );
  }

  /// Create a copy of TempUserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailabilityReceiverSettingCopyWith<$Res>?
  get availabilityReceiverDefaultSetting {
    if (_value.availabilityReceiverDefaultSetting == null) {
      return null;
    }

    return $AvailabilityReceiverSettingCopyWith<$Res>(
      _value.availabilityReceiverDefaultSetting!,
      (value) {
        return _then(
          _value.copyWith(availabilityReceiverDefaultSetting: value) as $Val,
        );
      },
    );
  }
}

/// @nodoc
abstract class _$$TempUserAvailabilitiesImplCopyWith<$Res>
    implements $TempUserAvailabilitiesCopyWith<$Res> {
  factory _$$TempUserAvailabilitiesImplCopyWith(
    _$TempUserAvailabilitiesImpl value,
    $Res Function(_$TempUserAvailabilitiesImpl) then,
  ) = __$$TempUserAvailabilitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    List<DailyAvailability> dailyAvailabilityTimeRange,
    AvailabilityReceiverSetting? availabilityReceiverDefaultSetting,
  });

  @override
  $AvailabilityReceiverSettingCopyWith<$Res>?
  get availabilityReceiverDefaultSetting;
}

/// @nodoc
class __$$TempUserAvailabilitiesImplCopyWithImpl<$Res>
    extends
        _$TempUserAvailabilitiesCopyWithImpl<$Res, _$TempUserAvailabilitiesImpl>
    implements _$$TempUserAvailabilitiesImplCopyWith<$Res> {
  __$$TempUserAvailabilitiesImplCopyWithImpl(
    _$TempUserAvailabilitiesImpl _value,
    $Res Function(_$TempUserAvailabilitiesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TempUserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dailyAvailabilityTimeRange = null,
    Object? availabilityReceiverDefaultSetting = freezed,
  }) {
    return _then(
      _$TempUserAvailabilitiesImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        dailyAvailabilityTimeRange:
            null == dailyAvailabilityTimeRange
                ? _value._dailyAvailabilityTimeRange
                : dailyAvailabilityTimeRange // ignore: cast_nullable_to_non_nullable
                    as List<DailyAvailability>,
        availabilityReceiverDefaultSetting:
            freezed == availabilityReceiverDefaultSetting
                ? _value.availabilityReceiverDefaultSetting
                : availabilityReceiverDefaultSetting // ignore: cast_nullable_to_non_nullable
                    as AvailabilityReceiverSetting?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TempUserAvailabilitiesImpl implements _TempUserAvailabilities {
  const _$TempUserAvailabilitiesImpl({
    this.id,
    final List<DailyAvailability> dailyAvailabilityTimeRange = const [],
    this.availabilityReceiverDefaultSetting,
  }) : _dailyAvailabilityTimeRange = dailyAvailabilityTimeRange;

  factory _$TempUserAvailabilitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempUserAvailabilitiesImplFromJson(json);

  @override
  final String? id;
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
  final AvailabilityReceiverSetting? availabilityReceiverDefaultSetting;

  @override
  String toString() {
    return 'TempUserAvailabilities(id: $id, dailyAvailabilityTimeRange: $dailyAvailabilityTimeRange, availabilityReceiverDefaultSetting: $availabilityReceiverDefaultSetting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempUserAvailabilitiesImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(
              other._dailyAvailabilityTimeRange,
              _dailyAvailabilityTimeRange,
            ) &&
            (identical(
                  other.availabilityReceiverDefaultSetting,
                  availabilityReceiverDefaultSetting,
                ) ||
                other.availabilityReceiverDefaultSetting ==
                    availabilityReceiverDefaultSetting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_dailyAvailabilityTimeRange),
    availabilityReceiverDefaultSetting,
  );

  /// Create a copy of TempUserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempUserAvailabilitiesImplCopyWith<_$TempUserAvailabilitiesImpl>
  get copyWith =>
      __$$TempUserAvailabilitiesImplCopyWithImpl<_$TempUserAvailabilitiesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TempUserAvailabilitiesImplToJson(this);
  }
}

abstract class _TempUserAvailabilities implements TempUserAvailabilities {
  const factory _TempUserAvailabilities({
    final String? id,
    final List<DailyAvailability> dailyAvailabilityTimeRange,
    final AvailabilityReceiverSetting? availabilityReceiverDefaultSetting,
  }) = _$TempUserAvailabilitiesImpl;

  factory _TempUserAvailabilities.fromJson(Map<String, dynamic> json) =
      _$TempUserAvailabilitiesImpl.fromJson;

  @override
  String? get id;
  @override
  List<DailyAvailability> get dailyAvailabilityTimeRange;
  @override
  AvailabilityReceiverSetting? get availabilityReceiverDefaultSetting;

  /// Create a copy of TempUserAvailabilities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempUserAvailabilitiesImplCopyWith<_$TempUserAvailabilitiesImpl>
  get copyWith => throw _privateConstructorUsedError;
}
