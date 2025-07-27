// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_work_place_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdateWorkPlaceUserInfo _$UpdateWorkPlaceUserInfoFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateWorkPlaceUserInfo.fromJson(json);
}

/// @nodoc
mixin _$UpdateWorkPlaceUserInfo {
  String get currentUserId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get workPlaceId => throw _privateConstructorUsedError;
  bool get wasOwner => throw _privateConstructorUsedError;
  bool get isTempUser => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  bool get didPositionUpdated => throw _privateConstructorUsedError;
  bool get haveChatRoomAccess => throw _privateConstructorUsedError;
  bool get didHaveChatRoomAccess => throw _privateConstructorUsedError;
  List<String> get removedPosition => throw _privateConstructorUsedError;
  List<PositionModel> get workPlacePositions =>
      throw _privateConstructorUsedError;
  UserWorkPlaceInfo get updatedUserWorkPlaceInfo =>
      throw _privateConstructorUsedError;

  /// Serializes this UpdateWorkPlaceUserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateWorkPlaceUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateWorkPlaceUserInfoCopyWith<UpdateWorkPlaceUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWorkPlaceUserInfoCopyWith<$Res> {
  factory $UpdateWorkPlaceUserInfoCopyWith(
    UpdateWorkPlaceUserInfo value,
    $Res Function(UpdateWorkPlaceUserInfo) then,
  ) = _$UpdateWorkPlaceUserInfoCopyWithImpl<$Res, UpdateWorkPlaceUserInfo>;
  @useResult
  $Res call({
    String currentUserId,
    String userId,
    String workPlaceId,
    bool wasOwner,
    bool isTempUser,
    bool isOwner,
    bool didPositionUpdated,
    bool haveChatRoomAccess,
    bool didHaveChatRoomAccess,
    List<String> removedPosition,
    List<PositionModel> workPlacePositions,
    UserWorkPlaceInfo updatedUserWorkPlaceInfo,
  });

  $UserWorkPlaceInfoCopyWith<$Res> get updatedUserWorkPlaceInfo;
}

/// @nodoc
class _$UpdateWorkPlaceUserInfoCopyWithImpl<
  $Res,
  $Val extends UpdateWorkPlaceUserInfo
>
    implements $UpdateWorkPlaceUserInfoCopyWith<$Res> {
  _$UpdateWorkPlaceUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateWorkPlaceUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = null,
    Object? userId = null,
    Object? workPlaceId = null,
    Object? wasOwner = null,
    Object? isTempUser = null,
    Object? isOwner = null,
    Object? didPositionUpdated = null,
    Object? haveChatRoomAccess = null,
    Object? didHaveChatRoomAccess = null,
    Object? removedPosition = null,
    Object? workPlacePositions = null,
    Object? updatedUserWorkPlaceInfo = null,
  }) {
    return _then(
      _value.copyWith(
            currentUserId:
                null == currentUserId
                    ? _value.currentUserId
                    : currentUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            wasOwner:
                null == wasOwner
                    ? _value.wasOwner
                    : wasOwner // ignore: cast_nullable_to_non_nullable
                        as bool,
            isTempUser:
                null == isTempUser
                    ? _value.isTempUser
                    : isTempUser // ignore: cast_nullable_to_non_nullable
                        as bool,
            isOwner:
                null == isOwner
                    ? _value.isOwner
                    : isOwner // ignore: cast_nullable_to_non_nullable
                        as bool,
            didPositionUpdated:
                null == didPositionUpdated
                    ? _value.didPositionUpdated
                    : didPositionUpdated // ignore: cast_nullable_to_non_nullable
                        as bool,
            haveChatRoomAccess:
                null == haveChatRoomAccess
                    ? _value.haveChatRoomAccess
                    : haveChatRoomAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            didHaveChatRoomAccess:
                null == didHaveChatRoomAccess
                    ? _value.didHaveChatRoomAccess
                    : didHaveChatRoomAccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            removedPosition:
                null == removedPosition
                    ? _value.removedPosition
                    : removedPosition // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            workPlacePositions:
                null == workPlacePositions
                    ? _value.workPlacePositions
                    : workPlacePositions // ignore: cast_nullable_to_non_nullable
                        as List<PositionModel>,
            updatedUserWorkPlaceInfo:
                null == updatedUserWorkPlaceInfo
                    ? _value.updatedUserWorkPlaceInfo
                    : updatedUserWorkPlaceInfo // ignore: cast_nullable_to_non_nullable
                        as UserWorkPlaceInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateWorkPlaceUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWorkPlaceInfoCopyWith<$Res> get updatedUserWorkPlaceInfo {
    return $UserWorkPlaceInfoCopyWith<$Res>(_value.updatedUserWorkPlaceInfo, (
      value,
    ) {
      return _then(_value.copyWith(updatedUserWorkPlaceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateWorkPlaceUserInfoImplCopyWith<$Res>
    implements $UpdateWorkPlaceUserInfoCopyWith<$Res> {
  factory _$$UpdateWorkPlaceUserInfoImplCopyWith(
    _$UpdateWorkPlaceUserInfoImpl value,
    $Res Function(_$UpdateWorkPlaceUserInfoImpl) then,
  ) = __$$UpdateWorkPlaceUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String currentUserId,
    String userId,
    String workPlaceId,
    bool wasOwner,
    bool isTempUser,
    bool isOwner,
    bool didPositionUpdated,
    bool haveChatRoomAccess,
    bool didHaveChatRoomAccess,
    List<String> removedPosition,
    List<PositionModel> workPlacePositions,
    UserWorkPlaceInfo updatedUserWorkPlaceInfo,
  });

  @override
  $UserWorkPlaceInfoCopyWith<$Res> get updatedUserWorkPlaceInfo;
}

/// @nodoc
class __$$UpdateWorkPlaceUserInfoImplCopyWithImpl<$Res>
    extends
        _$UpdateWorkPlaceUserInfoCopyWithImpl<
          $Res,
          _$UpdateWorkPlaceUserInfoImpl
        >
    implements _$$UpdateWorkPlaceUserInfoImplCopyWith<$Res> {
  __$$UpdateWorkPlaceUserInfoImplCopyWithImpl(
    _$UpdateWorkPlaceUserInfoImpl _value,
    $Res Function(_$UpdateWorkPlaceUserInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateWorkPlaceUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = null,
    Object? userId = null,
    Object? workPlaceId = null,
    Object? wasOwner = null,
    Object? isTempUser = null,
    Object? isOwner = null,
    Object? didPositionUpdated = null,
    Object? haveChatRoomAccess = null,
    Object? didHaveChatRoomAccess = null,
    Object? removedPosition = null,
    Object? workPlacePositions = null,
    Object? updatedUserWorkPlaceInfo = null,
  }) {
    return _then(
      _$UpdateWorkPlaceUserInfoImpl(
        currentUserId:
            null == currentUserId
                ? _value.currentUserId
                : currentUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        wasOwner:
            null == wasOwner
                ? _value.wasOwner
                : wasOwner // ignore: cast_nullable_to_non_nullable
                    as bool,
        isTempUser:
            null == isTempUser
                ? _value.isTempUser
                : isTempUser // ignore: cast_nullable_to_non_nullable
                    as bool,
        isOwner:
            null == isOwner
                ? _value.isOwner
                : isOwner // ignore: cast_nullable_to_non_nullable
                    as bool,
        didPositionUpdated:
            null == didPositionUpdated
                ? _value.didPositionUpdated
                : didPositionUpdated // ignore: cast_nullable_to_non_nullable
                    as bool,
        haveChatRoomAccess:
            null == haveChatRoomAccess
                ? _value.haveChatRoomAccess
                : haveChatRoomAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        didHaveChatRoomAccess:
            null == didHaveChatRoomAccess
                ? _value.didHaveChatRoomAccess
                : didHaveChatRoomAccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        removedPosition:
            null == removedPosition
                ? _value._removedPosition
                : removedPosition // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        workPlacePositions:
            null == workPlacePositions
                ? _value._workPlacePositions
                : workPlacePositions // ignore: cast_nullable_to_non_nullable
                    as List<PositionModel>,
        updatedUserWorkPlaceInfo:
            null == updatedUserWorkPlaceInfo
                ? _value.updatedUserWorkPlaceInfo
                : updatedUserWorkPlaceInfo // ignore: cast_nullable_to_non_nullable
                    as UserWorkPlaceInfo,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UpdateWorkPlaceUserInfoImpl implements _UpdateWorkPlaceUserInfo {
  const _$UpdateWorkPlaceUserInfoImpl({
    required this.currentUserId,
    required this.userId,
    required this.workPlaceId,
    required this.wasOwner,
    required this.isTempUser,
    required this.isOwner,
    required this.didPositionUpdated,
    required this.haveChatRoomAccess,
    required this.didHaveChatRoomAccess,
    required final List<String> removedPosition,
    required final List<PositionModel> workPlacePositions,
    required this.updatedUserWorkPlaceInfo,
  }) : _removedPosition = removedPosition,
       _workPlacePositions = workPlacePositions;

  factory _$UpdateWorkPlaceUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateWorkPlaceUserInfoImplFromJson(json);

  @override
  final String currentUserId;
  @override
  final String userId;
  @override
  final String workPlaceId;
  @override
  final bool wasOwner;
  @override
  final bool isTempUser;
  @override
  final bool isOwner;
  @override
  final bool didPositionUpdated;
  @override
  final bool haveChatRoomAccess;
  @override
  final bool didHaveChatRoomAccess;
  final List<String> _removedPosition;
  @override
  List<String> get removedPosition {
    if (_removedPosition is EqualUnmodifiableListView) return _removedPosition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_removedPosition);
  }

  final List<PositionModel> _workPlacePositions;
  @override
  List<PositionModel> get workPlacePositions {
    if (_workPlacePositions is EqualUnmodifiableListView)
      return _workPlacePositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workPlacePositions);
  }

  @override
  final UserWorkPlaceInfo updatedUserWorkPlaceInfo;

  @override
  String toString() {
    return 'UpdateWorkPlaceUserInfo(currentUserId: $currentUserId, userId: $userId, workPlaceId: $workPlaceId, wasOwner: $wasOwner, isTempUser: $isTempUser, isOwner: $isOwner, didPositionUpdated: $didPositionUpdated, haveChatRoomAccess: $haveChatRoomAccess, didHaveChatRoomAccess: $didHaveChatRoomAccess, removedPosition: $removedPosition, workPlacePositions: $workPlacePositions, updatedUserWorkPlaceInfo: $updatedUserWorkPlaceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWorkPlaceUserInfoImpl &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.wasOwner, wasOwner) ||
                other.wasOwner == wasOwner) &&
            (identical(other.isTempUser, isTempUser) ||
                other.isTempUser == isTempUser) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
            (identical(other.didPositionUpdated, didPositionUpdated) ||
                other.didPositionUpdated == didPositionUpdated) &&
            (identical(other.haveChatRoomAccess, haveChatRoomAccess) ||
                other.haveChatRoomAccess == haveChatRoomAccess) &&
            (identical(other.didHaveChatRoomAccess, didHaveChatRoomAccess) ||
                other.didHaveChatRoomAccess == didHaveChatRoomAccess) &&
            const DeepCollectionEquality().equals(
              other._removedPosition,
              _removedPosition,
            ) &&
            const DeepCollectionEquality().equals(
              other._workPlacePositions,
              _workPlacePositions,
            ) &&
            (identical(
                  other.updatedUserWorkPlaceInfo,
                  updatedUserWorkPlaceInfo,
                ) ||
                other.updatedUserWorkPlaceInfo == updatedUserWorkPlaceInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentUserId,
    userId,
    workPlaceId,
    wasOwner,
    isTempUser,
    isOwner,
    didPositionUpdated,
    haveChatRoomAccess,
    didHaveChatRoomAccess,
    const DeepCollectionEquality().hash(_removedPosition),
    const DeepCollectionEquality().hash(_workPlacePositions),
    updatedUserWorkPlaceInfo,
  );

  /// Create a copy of UpdateWorkPlaceUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWorkPlaceUserInfoImplCopyWith<_$UpdateWorkPlaceUserInfoImpl>
  get copyWith => __$$UpdateWorkPlaceUserInfoImplCopyWithImpl<
    _$UpdateWorkPlaceUserInfoImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWorkPlaceUserInfoImplToJson(this);
  }
}

abstract class _UpdateWorkPlaceUserInfo implements UpdateWorkPlaceUserInfo {
  const factory _UpdateWorkPlaceUserInfo({
    required final String currentUserId,
    required final String userId,
    required final String workPlaceId,
    required final bool wasOwner,
    required final bool isTempUser,
    required final bool isOwner,
    required final bool didPositionUpdated,
    required final bool haveChatRoomAccess,
    required final bool didHaveChatRoomAccess,
    required final List<String> removedPosition,
    required final List<PositionModel> workPlacePositions,
    required final UserWorkPlaceInfo updatedUserWorkPlaceInfo,
  }) = _$UpdateWorkPlaceUserInfoImpl;

  factory _UpdateWorkPlaceUserInfo.fromJson(Map<String, dynamic> json) =
      _$UpdateWorkPlaceUserInfoImpl.fromJson;

  @override
  String get currentUserId;
  @override
  String get userId;
  @override
  String get workPlaceId;
  @override
  bool get wasOwner;
  @override
  bool get isTempUser;
  @override
  bool get isOwner;
  @override
  bool get didPositionUpdated;
  @override
  bool get haveChatRoomAccess;
  @override
  bool get didHaveChatRoomAccess;
  @override
  List<String> get removedPosition;
  @override
  List<PositionModel> get workPlacePositions;
  @override
  UserWorkPlaceInfo get updatedUserWorkPlaceInfo;

  /// Create a copy of UpdateWorkPlaceUserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWorkPlaceUserInfoImplCopyWith<_$UpdateWorkPlaceUserInfoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
