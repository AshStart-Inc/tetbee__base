// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  MessageType get messageType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get senderUserId => throw _privateConstructorUsedError;
  List<String> get tagedUserId => throw _privateConstructorUsedError;
  String get replyMessageId => throw _privateConstructorUsedError;
  List<String>? get filters => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  bool get pined => throw _privateConstructorUsedError;
  Map<String, ReactionType> get reactions => throw _privateConstructorUsedError;
  Map<String, StoredData> get mediaUrls => throw _privateConstructorUsedError;

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
    MessageModel value,
    $Res Function(MessageModel) then,
  ) = _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    MessageType messageType,
    String message,
    String senderUserId,
    List<String> tagedUserId,
    String replyMessageId,
    List<String>? filters,
    bool deleted,
    bool pined,
    Map<String, ReactionType> reactions,
    Map<String, StoredData> mediaUrls,
  });
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? messageType = null,
    Object? message = null,
    Object? senderUserId = null,
    Object? tagedUserId = null,
    Object? replyMessageId = null,
    Object? filters = freezed,
    Object? deleted = null,
    Object? pined = null,
    Object? reactions = null,
    Object? mediaUrls = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
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
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            messageType:
                null == messageType
                    ? _value.messageType
                    : messageType // ignore: cast_nullable_to_non_nullable
                        as MessageType,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            senderUserId:
                null == senderUserId
                    ? _value.senderUserId
                    : senderUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            tagedUserId:
                null == tagedUserId
                    ? _value.tagedUserId
                    : tagedUserId // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            replyMessageId:
                null == replyMessageId
                    ? _value.replyMessageId
                    : replyMessageId // ignore: cast_nullable_to_non_nullable
                        as String,
            filters:
                freezed == filters
                    ? _value.filters
                    : filters // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            pined:
                null == pined
                    ? _value.pined
                    : pined // ignore: cast_nullable_to_non_nullable
                        as bool,
            reactions:
                null == reactions
                    ? _value.reactions
                    : reactions // ignore: cast_nullable_to_non_nullable
                        as Map<String, ReactionType>,
            mediaUrls:
                null == mediaUrls
                    ? _value.mediaUrls
                    : mediaUrls // ignore: cast_nullable_to_non_nullable
                        as Map<String, StoredData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
    _$MessageModelImpl value,
    $Res Function(_$MessageModelImpl) then,
  ) = __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    MessageType messageType,
    String message,
    String senderUserId,
    List<String> tagedUserId,
    String replyMessageId,
    List<String>? filters,
    bool deleted,
    bool pined,
    Map<String, ReactionType> reactions,
    Map<String, StoredData> mediaUrls,
  });
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
    _$MessageModelImpl _value,
    $Res Function(_$MessageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? messageType = null,
    Object? message = null,
    Object? senderUserId = null,
    Object? tagedUserId = null,
    Object? replyMessageId = null,
    Object? filters = freezed,
    Object? deleted = null,
    Object? pined = null,
    Object? reactions = null,
    Object? mediaUrls = null,
  }) {
    return _then(
      _$MessageModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
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
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        messageType:
            null == messageType
                ? _value.messageType
                : messageType // ignore: cast_nullable_to_non_nullable
                    as MessageType,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        senderUserId:
            null == senderUserId
                ? _value.senderUserId
                : senderUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        tagedUserId:
            null == tagedUserId
                ? _value._tagedUserId
                : tagedUserId // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        replyMessageId:
            null == replyMessageId
                ? _value.replyMessageId
                : replyMessageId // ignore: cast_nullable_to_non_nullable
                    as String,
        filters:
            freezed == filters
                ? _value._filters
                : filters // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        pined:
            null == pined
                ? _value.pined
                : pined // ignore: cast_nullable_to_non_nullable
                    as bool,
        reactions:
            null == reactions
                ? _value._reactions
                : reactions // ignore: cast_nullable_to_non_nullable
                    as Map<String, ReactionType>,
        mediaUrls:
            null == mediaUrls
                ? _value._mediaUrls
                : mediaUrls // ignore: cast_nullable_to_non_nullable
                    as Map<String, StoredData>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    required this.messageType,
    this.message = '',
    this.senderUserId = '',
    final List<String> tagedUserId = const [],
    this.replyMessageId = '',
    final List<String>? filters = const [],
    this.deleted = false,
    this.pined = false,
    final Map<String, ReactionType> reactions = const {},
    final Map<String, StoredData> mediaUrls = const {},
  }) : _tagedUserId = tagedUserId,
       _filters = filters,
       _reactions = reactions,
       _mediaUrls = mediaUrls;

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  final String? id;
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
  final MessageType messageType;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String senderUserId;
  final List<String> _tagedUserId;
  @override
  @JsonKey()
  List<String> get tagedUserId {
    if (_tagedUserId is EqualUnmodifiableListView) return _tagedUserId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagedUserId);
  }

  @override
  @JsonKey()
  final String replyMessageId;
  final List<String>? _filters;
  @override
  @JsonKey()
  List<String>? get filters {
    final value = _filters;
    if (value == null) return null;
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool deleted;
  @override
  @JsonKey()
  final bool pined;
  final Map<String, ReactionType> _reactions;
  @override
  @JsonKey()
  Map<String, ReactionType> get reactions {
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reactions);
  }

  final Map<String, StoredData> _mediaUrls;
  @override
  @JsonKey()
  Map<String, StoredData> get mediaUrls {
    if (_mediaUrls is EqualUnmodifiableMapView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mediaUrls);
  }

  @override
  String toString() {
    return 'MessageModel(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, messageType: $messageType, message: $message, senderUserId: $senderUserId, tagedUserId: $tagedUserId, replyMessageId: $replyMessageId, filters: $filters, deleted: $deleted, pined: $pined, reactions: $reactions, mediaUrls: $mediaUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.senderUserId, senderUserId) ||
                other.senderUserId == senderUserId) &&
            const DeepCollectionEquality().equals(
              other._tagedUserId,
              _tagedUserId,
            ) &&
            (identical(other.replyMessageId, replyMessageId) ||
                other.replyMessageId == replyMessageId) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.pined, pined) || other.pined == pined) &&
            const DeepCollectionEquality().equals(
              other._reactions,
              _reactions,
            ) &&
            const DeepCollectionEquality().equals(
              other._mediaUrls,
              _mediaUrls,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    createdBy,
    updatedAt,
    messageType,
    message,
    senderUserId,
    const DeepCollectionEquality().hash(_tagedUserId),
    replyMessageId,
    const DeepCollectionEquality().hash(_filters),
    deleted,
    pined,
    const DeepCollectionEquality().hash(_reactions),
    const DeepCollectionEquality().hash(_mediaUrls),
  );

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(this);
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    required final MessageType messageType,
    final String message,
    final String senderUserId,
    final List<String> tagedUserId,
    final String replyMessageId,
    final List<String>? filters,
    final bool deleted,
    final bool pined,
    final Map<String, ReactionType> reactions,
    final Map<String, StoredData> mediaUrls,
  }) = _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  MessageType get messageType;
  @override
  String get message;
  @override
  String get senderUserId;
  @override
  List<String> get tagedUserId;
  @override
  String get replyMessageId;
  @override
  List<String>? get filters;
  @override
  bool get deleted;
  @override
  bool get pined;
  @override
  Map<String, ReactionType> get reactions;
  @override
  Map<String, StoredData> get mediaUrls;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
