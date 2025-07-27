// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
mixin _$ChatRoom {
  String? get id => throw _privateConstructorUsedError;
  ChatType get chatType => throw _privateConstructorUsedError;
  String get workPlaceId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  List<String> get filters => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get latestMessageTime => throw _privateConstructorUsedError;
  String? get latestMessageId => throw _privateConstructorUsedError;
  Map<String, ChatRoomUserStatus> get userStatus =>
      throw _privateConstructorUsedError;

  /// Serializes this ChatRoom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res, ChatRoom>;
  @useResult
  $Res call({
    String? id,
    ChatType chatType,
    String workPlaceId,
    String name,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    List<String> filters,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? latestMessageTime,
    String? latestMessageId,
    Map<String, ChatRoomUserStatus> userStatus,
  });
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res, $Val extends ChatRoom>
    implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatType = null,
    Object? workPlaceId = null,
    Object? name = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? filters = null,
    Object? latestMessageTime = freezed,
    Object? latestMessageId = freezed,
    Object? userStatus = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            chatType:
                null == chatType
                    ? _value.chatType
                    : chatType // ignore: cast_nullable_to_non_nullable
                        as ChatType,
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
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
            filters:
                null == filters
                    ? _value.filters
                    : filters // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            latestMessageTime:
                freezed == latestMessageTime
                    ? _value.latestMessageTime
                    : latestMessageTime // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            latestMessageId:
                freezed == latestMessageId
                    ? _value.latestMessageId
                    : latestMessageId // ignore: cast_nullable_to_non_nullable
                        as String?,
            userStatus:
                null == userStatus
                    ? _value.userStatus
                    : userStatus // ignore: cast_nullable_to_non_nullable
                        as Map<String, ChatRoomUserStatus>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatRoomImplCopyWith<$Res>
    implements $ChatRoomCopyWith<$Res> {
  factory _$$ChatRoomImplCopyWith(
    _$ChatRoomImpl value,
    $Res Function(_$ChatRoomImpl) then,
  ) = __$$ChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    ChatType chatType,
    String workPlaceId,
    String name,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    List<String> filters,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? latestMessageTime,
    String? latestMessageId,
    Map<String, ChatRoomUserStatus> userStatus,
  });
}

/// @nodoc
class __$$ChatRoomImplCopyWithImpl<$Res>
    extends _$ChatRoomCopyWithImpl<$Res, _$ChatRoomImpl>
    implements _$$ChatRoomImplCopyWith<$Res> {
  __$$ChatRoomImplCopyWithImpl(
    _$ChatRoomImpl _value,
    $Res Function(_$ChatRoomImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatType = null,
    Object? workPlaceId = null,
    Object? name = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? filters = null,
    Object? latestMessageTime = freezed,
    Object? latestMessageId = freezed,
    Object? userStatus = null,
  }) {
    return _then(
      _$ChatRoomImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        chatType:
            null == chatType
                ? _value.chatType
                : chatType // ignore: cast_nullable_to_non_nullable
                    as ChatType,
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
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
        filters:
            null == filters
                ? _value._filters
                : filters // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        latestMessageTime:
            freezed == latestMessageTime
                ? _value.latestMessageTime
                : latestMessageTime // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        latestMessageId:
            freezed == latestMessageId
                ? _value.latestMessageId
                : latestMessageId // ignore: cast_nullable_to_non_nullable
                    as String?,
        userStatus:
            null == userStatus
                ? _value._userStatus
                : userStatus // ignore: cast_nullable_to_non_nullable
                    as Map<String, ChatRoomUserStatus>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChatRoomImpl implements _ChatRoom {
  const _$ChatRoomImpl({
    this.id,
    required this.chatType,
    this.workPlaceId = '',
    this.name = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    final List<String> filters = const [],
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.latestMessageTime,
    this.latestMessageId,
    final Map<String, ChatRoomUserStatus> userStatus = const {},
  }) : _filters = filters,
       _userStatus = userStatus;

  factory _$ChatRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomImplFromJson(json);

  @override
  final String? id;
  @override
  final ChatType chatType;
  @override
  @JsonKey()
  final String workPlaceId;
  @override
  @JsonKey()
  final String name;
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
  final List<String> _filters;
  @override
  @JsonKey()
  List<String> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? latestMessageTime;
  @override
  final String? latestMessageId;
  final Map<String, ChatRoomUserStatus> _userStatus;
  @override
  @JsonKey()
  Map<String, ChatRoomUserStatus> get userStatus {
    if (_userStatus is EqualUnmodifiableMapView) return _userStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userStatus);
  }

  @override
  String toString() {
    return 'ChatRoom(id: $id, chatType: $chatType, workPlaceId: $workPlaceId, name: $name, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, filters: $filters, latestMessageTime: $latestMessageTime, latestMessageId: $latestMessageId, userStatus: $userStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.latestMessageTime, latestMessageTime) ||
                other.latestMessageTime == latestMessageTime) &&
            (identical(other.latestMessageId, latestMessageId) ||
                other.latestMessageId == latestMessageId) &&
            const DeepCollectionEquality().equals(
              other._userStatus,
              _userStatus,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    chatType,
    workPlaceId,
    name,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    const DeepCollectionEquality().hash(_filters),
    latestMessageTime,
    latestMessageId,
    const DeepCollectionEquality().hash(_userStatus),
  );

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      __$$ChatRoomImplCopyWithImpl<_$ChatRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomImplToJson(this);
  }
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom({
    final String? id,
    required final ChatType chatType,
    final String workPlaceId,
    final String name,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    final List<String> filters,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? latestMessageTime,
    final String? latestMessageId,
    final Map<String, ChatRoomUserStatus> userStatus,
  }) = _$ChatRoomImpl;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) =
      _$ChatRoomImpl.fromJson;

  @override
  String? get id;
  @override
  ChatType get chatType;
  @override
  String get workPlaceId;
  @override
  String get name;
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
  List<String> get filters;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get latestMessageTime;
  @override
  String? get latestMessageId;
  @override
  Map<String, ChatRoomUserStatus> get userStatus;

  /// Create a copy of ChatRoom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
