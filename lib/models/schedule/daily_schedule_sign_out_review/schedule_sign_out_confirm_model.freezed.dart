// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_sign_out_confirm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScheduleSignOutConfirmModel _$ScheduleSignOutConfirmModelFromJson(
  Map<String, dynamic> json,
) {
  return _ScheduleSignOutConfirmModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleSignOutConfirmModel {
  String get scheduleUserId => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get scheduleDate => throw _privateConstructorUsedError;
  List<ScheduleConfirmHistory> get confirmHistories =>
      throw _privateConstructorUsedError;

  /// Serializes this ScheduleSignOutConfirmModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleSignOutConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleSignOutConfirmModelCopyWith<ScheduleSignOutConfirmModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleSignOutConfirmModelCopyWith<$Res> {
  factory $ScheduleSignOutConfirmModelCopyWith(
    ScheduleSignOutConfirmModel value,
    $Res Function(ScheduleSignOutConfirmModel) then,
  ) =
      _$ScheduleSignOutConfirmModelCopyWithImpl<
        $Res,
        ScheduleSignOutConfirmModel
      >;
  @useResult
  $Res call({
    String scheduleUserId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? scheduleDate,
    List<ScheduleConfirmHistory> confirmHistories,
  });
}

/// @nodoc
class _$ScheduleSignOutConfirmModelCopyWithImpl<
  $Res,
  $Val extends ScheduleSignOutConfirmModel
>
    implements $ScheduleSignOutConfirmModelCopyWith<$Res> {
  _$ScheduleSignOutConfirmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleSignOutConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleUserId = null,
    Object? scheduleDate = freezed,
    Object? confirmHistories = null,
  }) {
    return _then(
      _value.copyWith(
            scheduleUserId:
                null == scheduleUserId
                    ? _value.scheduleUserId
                    : scheduleUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            scheduleDate:
                freezed == scheduleDate
                    ? _value.scheduleDate
                    : scheduleDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            confirmHistories:
                null == confirmHistories
                    ? _value.confirmHistories
                    : confirmHistories // ignore: cast_nullable_to_non_nullable
                        as List<ScheduleConfirmHistory>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScheduleSignOutConfirmModelImplCopyWith<$Res>
    implements $ScheduleSignOutConfirmModelCopyWith<$Res> {
  factory _$$ScheduleSignOutConfirmModelImplCopyWith(
    _$ScheduleSignOutConfirmModelImpl value,
    $Res Function(_$ScheduleSignOutConfirmModelImpl) then,
  ) = __$$ScheduleSignOutConfirmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String scheduleUserId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    DateTime? scheduleDate,
    List<ScheduleConfirmHistory> confirmHistories,
  });
}

/// @nodoc
class __$$ScheduleSignOutConfirmModelImplCopyWithImpl<$Res>
    extends
        _$ScheduleSignOutConfirmModelCopyWithImpl<
          $Res,
          _$ScheduleSignOutConfirmModelImpl
        >
    implements _$$ScheduleSignOutConfirmModelImplCopyWith<$Res> {
  __$$ScheduleSignOutConfirmModelImplCopyWithImpl(
    _$ScheduleSignOutConfirmModelImpl _value,
    $Res Function(_$ScheduleSignOutConfirmModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScheduleSignOutConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleUserId = null,
    Object? scheduleDate = freezed,
    Object? confirmHistories = null,
  }) {
    return _then(
      _$ScheduleSignOutConfirmModelImpl(
        scheduleUserId:
            null == scheduleUserId
                ? _value.scheduleUserId
                : scheduleUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        scheduleDate:
            freezed == scheduleDate
                ? _value.scheduleDate
                : scheduleDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        confirmHistories:
            null == confirmHistories
                ? _value._confirmHistories
                : confirmHistories // ignore: cast_nullable_to_non_nullable
                    as List<ScheduleConfirmHistory>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ScheduleSignOutConfirmModelImpl
    implements _ScheduleSignOutConfirmModel {
  const _$ScheduleSignOutConfirmModelImpl({
    this.scheduleUserId = '',
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    this.scheduleDate,
    final List<ScheduleConfirmHistory> confirmHistories = const [],
  }) : _confirmHistories = confirmHistories;

  factory _$ScheduleSignOutConfirmModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ScheduleSignOutConfirmModelImplFromJson(json);

  @override
  @JsonKey()
  final String scheduleUserId;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  final DateTime? scheduleDate;
  final List<ScheduleConfirmHistory> _confirmHistories;
  @override
  @JsonKey()
  List<ScheduleConfirmHistory> get confirmHistories {
    if (_confirmHistories is EqualUnmodifiableListView)
      return _confirmHistories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_confirmHistories);
  }

  @override
  String toString() {
    return 'ScheduleSignOutConfirmModel(scheduleUserId: $scheduleUserId, scheduleDate: $scheduleDate, confirmHistories: $confirmHistories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleSignOutConfirmModelImpl &&
            (identical(other.scheduleUserId, scheduleUserId) ||
                other.scheduleUserId == scheduleUserId) &&
            (identical(other.scheduleDate, scheduleDate) ||
                other.scheduleDate == scheduleDate) &&
            const DeepCollectionEquality().equals(
              other._confirmHistories,
              _confirmHistories,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    scheduleUserId,
    scheduleDate,
    const DeepCollectionEquality().hash(_confirmHistories),
  );

  /// Create a copy of ScheduleSignOutConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleSignOutConfirmModelImplCopyWith<_$ScheduleSignOutConfirmModelImpl>
  get copyWith => __$$ScheduleSignOutConfirmModelImplCopyWithImpl<
    _$ScheduleSignOutConfirmModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleSignOutConfirmModelImplToJson(this);
  }
}

abstract class _ScheduleSignOutConfirmModel
    implements ScheduleSignOutConfirmModel {
  const factory _ScheduleSignOutConfirmModel({
    final String scheduleUserId,
    @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
    final DateTime? scheduleDate,
    final List<ScheduleConfirmHistory> confirmHistories,
  }) = _$ScheduleSignOutConfirmModelImpl;

  factory _ScheduleSignOutConfirmModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleSignOutConfirmModelImpl.fromJson;

  @override
  String get scheduleUserId;
  @override
  @JsonKey(toJson: Helpers.dateIsoToJson, fromJson: Helpers.dateFromJsonIso)
  DateTime? get scheduleDate;
  @override
  List<ScheduleConfirmHistory> get confirmHistories;

  /// Create a copy of ScheduleSignOutConfirmModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleSignOutConfirmModelImplCopyWith<_$ScheduleSignOutConfirmModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
