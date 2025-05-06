// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_receiver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AvailabilityReceiver _$AvailabilityReceiverFromJson(Map<String, dynamic> json) {
  return AavailabilityReceiver.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityReceiver {
  String get id => throw _privateConstructorUsedError;
  String get workPlaceId => throw _privateConstructorUsedError;
  String get workPlaceNickName => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  List<String> get userList => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;

  /// Serializes this AvailabilityReceiver to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityReceiverCopyWith<AvailabilityReceiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityReceiverCopyWith<$Res> {
  factory $AvailabilityReceiverCopyWith(
    AvailabilityReceiver value,
    $Res Function(AvailabilityReceiver) then,
  ) = _$AvailabilityReceiverCopyWithImpl<$Res, AvailabilityReceiver>;
  @useResult
  $Res call({
    String id,
    String workPlaceId,
    String workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    List<String> userList,
    bool isOpened,
    String startDate,
  });
}

/// @nodoc
class _$AvailabilityReceiverCopyWithImpl<
  $Res,
  $Val extends AvailabilityReceiver
>
    implements $AvailabilityReceiverCopyWith<$Res> {
  _$AvailabilityReceiverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workPlaceId = null,
    Object? workPlaceNickName = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? userList = null,
    Object? isOpened = null,
    Object? startDate = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceNickName:
                null == workPlaceNickName
                    ? _value.workPlaceNickName
                    : workPlaceNickName // ignore: cast_nullable_to_non_nullable
                        as String,
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
            userList:
                null == userList
                    ? _value.userList
                    : userList // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            isOpened:
                null == isOpened
                    ? _value.isOpened
                    : isOpened // ignore: cast_nullable_to_non_nullable
                        as bool,
            startDate:
                null == startDate
                    ? _value.startDate
                    : startDate // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AavailabilityReceiverImplCopyWith<$Res>
    implements $AvailabilityReceiverCopyWith<$Res> {
  factory _$$AavailabilityReceiverImplCopyWith(
    _$AavailabilityReceiverImpl value,
    $Res Function(_$AavailabilityReceiverImpl) then,
  ) = __$$AavailabilityReceiverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String workPlaceId,
    String workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    List<String> userList,
    bool isOpened,
    String startDate,
  });
}

/// @nodoc
class __$$AavailabilityReceiverImplCopyWithImpl<$Res>
    extends
        _$AvailabilityReceiverCopyWithImpl<$Res, _$AavailabilityReceiverImpl>
    implements _$$AavailabilityReceiverImplCopyWith<$Res> {
  __$$AavailabilityReceiverImplCopyWithImpl(
    _$AavailabilityReceiverImpl _value,
    $Res Function(_$AavailabilityReceiverImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workPlaceId = null,
    Object? workPlaceNickName = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? userList = null,
    Object? isOpened = null,
    Object? startDate = null,
  }) {
    return _then(
      _$AavailabilityReceiverImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceNickName:
            null == workPlaceNickName
                ? _value.workPlaceNickName
                : workPlaceNickName // ignore: cast_nullable_to_non_nullable
                    as String,
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
        userList:
            null == userList
                ? _value._userList
                : userList // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        isOpened:
            null == isOpened
                ? _value.isOpened
                : isOpened // ignore: cast_nullable_to_non_nullable
                    as bool,
        startDate:
            null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AavailabilityReceiverImpl implements AavailabilityReceiver {
  const _$AavailabilityReceiverImpl({
    required this.id,
    required this.workPlaceId,
    required this.workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    required this.createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    required this.updatedBy,
    required final List<String> userList,
    required this.isOpened,
    required this.startDate,
  }) : _userList = userList;

  factory _$AavailabilityReceiverImpl.fromJson(Map<String, dynamic> json) =>
      _$$AavailabilityReceiverImplFromJson(json);

  @override
  final String id;
  @override
  final String workPlaceId;
  @override
  final String workPlaceNickName;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? createdAt;
  @override
  final String createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? updatedAt;
  @override
  final String updatedBy;
  final List<String> _userList;
  @override
  List<String> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  final bool isOpened;
  @override
  final String startDate;

  @override
  String toString() {
    return 'AvailabilityReceiver(id: $id, workPlaceId: $workPlaceId, workPlaceNickName: $workPlaceNickName, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, userList: $userList, isOpened: $isOpened, startDate: $startDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AavailabilityReceiverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.workPlaceNickName, workPlaceNickName) ||
                other.workPlaceNickName == workPlaceNickName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            const DeepCollectionEquality().equals(other._userList, _userList) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    workPlaceId,
    workPlaceNickName,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    const DeepCollectionEquality().hash(_userList),
    isOpened,
    startDate,
  );

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AavailabilityReceiverImplCopyWith<_$AavailabilityReceiverImpl>
  get copyWith =>
      __$$AavailabilityReceiverImplCopyWithImpl<_$AavailabilityReceiverImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AavailabilityReceiverImplToJson(this);
  }
}

abstract class AavailabilityReceiver implements AvailabilityReceiver {
  const factory AavailabilityReceiver({
    required final String id,
    required final String workPlaceId,
    required final String workPlaceNickName,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    required final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    required final String updatedBy,
    required final List<String> userList,
    required final bool isOpened,
    required final String startDate,
  }) = _$AavailabilityReceiverImpl;

  factory AavailabilityReceiver.fromJson(Map<String, dynamic> json) =
      _$AavailabilityReceiverImpl.fromJson;

  @override
  String get id;
  @override
  String get workPlaceId;
  @override
  String get workPlaceNickName;
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
  List<String> get userList;
  @override
  bool get isOpened;
  @override
  String get startDate;

  /// Create a copy of AvailabilityReceiver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AavailabilityReceiverImplCopyWith<_$AavailabilityReceiverImpl>
  get copyWith => throw _privateConstructorUsedError;
}
