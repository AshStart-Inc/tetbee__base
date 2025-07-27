// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) {
  return _AppNotification.fromJson(json);
}

/// @nodoc
mixin _$AppNotification {
  @JsonSerializable(explicitToJson: true)
  String? get id => throw _privateConstructorUsedError;
  String get recipentUserId => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get readAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get referenceDocumentPath => throw _privateConstructorUsedError;
  String? get notificationTopic => throw _privateConstructorUsedError;
  String? get workPlaceId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  AppNotificationType? get type => throw _privateConstructorUsedError;
  Map<String, StoredData>? get mediaData => throw _privateConstructorUsedError;
  bool get didCompleteRequest => throw _privateConstructorUsedError;

  /// Serializes this AppNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
    AppNotification value,
    $Res Function(AppNotification) then,
  ) = _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call({
    @JsonSerializable(explicitToJson: true) String? id,
    String recipentUserId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? readAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String? referenceDocumentPath,
    String? notificationTopic,
    String? workPlaceId,
    String? title,
    String? body,
    AppNotificationType? type,
    Map<String, StoredData>? mediaData,
    bool didCompleteRequest,
  });
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recipentUserId = null,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? referenceDocumentPath = freezed,
    Object? notificationTopic = freezed,
    Object? workPlaceId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? mediaData = freezed,
    Object? didCompleteRequest = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            recipentUserId:
                null == recipentUserId
                    ? _value.recipentUserId
                    : recipentUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            readAt:
                freezed == readAt
                    ? _value.readAt
                    : readAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
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
            referenceDocumentPath:
                freezed == referenceDocumentPath
                    ? _value.referenceDocumentPath
                    : referenceDocumentPath // ignore: cast_nullable_to_non_nullable
                        as String?,
            notificationTopic:
                freezed == notificationTopic
                    ? _value.notificationTopic
                    : notificationTopic // ignore: cast_nullable_to_non_nullable
                        as String?,
            workPlaceId:
                freezed == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String?,
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            body:
                freezed == body
                    ? _value.body
                    : body // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as AppNotificationType?,
            mediaData:
                freezed == mediaData
                    ? _value.mediaData
                    : mediaData // ignore: cast_nullable_to_non_nullable
                        as Map<String, StoredData>?,
            didCompleteRequest:
                null == didCompleteRequest
                    ? _value.didCompleteRequest
                    : didCompleteRequest // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppNotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppNotificationImplCopyWith(
    _$AppNotificationImpl value,
    $Res Function(_$AppNotificationImpl) then,
  ) = __$$AppNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonSerializable(explicitToJson: true) String? id,
    String recipentUserId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? readAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String? referenceDocumentPath,
    String? notificationTopic,
    String? workPlaceId,
    String? title,
    String? body,
    AppNotificationType? type,
    Map<String, StoredData>? mediaData,
    bool didCompleteRequest,
  });
}

/// @nodoc
class __$$AppNotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppNotificationImpl>
    implements _$$AppNotificationImplCopyWith<$Res> {
  __$$AppNotificationImplCopyWithImpl(
    _$AppNotificationImpl _value,
    $Res Function(_$AppNotificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? recipentUserId = null,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? referenceDocumentPath = freezed,
    Object? notificationTopic = freezed,
    Object? workPlaceId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? mediaData = freezed,
    Object? didCompleteRequest = null,
  }) {
    return _then(
      _$AppNotificationImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        recipentUserId:
            null == recipentUserId
                ? _value.recipentUserId
                : recipentUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        readAt:
            freezed == readAt
                ? _value.readAt
                : readAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
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
        referenceDocumentPath:
            freezed == referenceDocumentPath
                ? _value.referenceDocumentPath
                : referenceDocumentPath // ignore: cast_nullable_to_non_nullable
                    as String?,
        notificationTopic:
            freezed == notificationTopic
                ? _value.notificationTopic
                : notificationTopic // ignore: cast_nullable_to_non_nullable
                    as String?,
        workPlaceId:
            freezed == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String?,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        body:
            freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as AppNotificationType?,
        mediaData:
            freezed == mediaData
                ? _value._mediaData
                : mediaData // ignore: cast_nullable_to_non_nullable
                    as Map<String, StoredData>?,
        didCompleteRequest:
            null == didCompleteRequest
                ? _value.didCompleteRequest
                : didCompleteRequest // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppNotificationImpl implements _AppNotification {
  const _$AppNotificationImpl({
    @JsonSerializable(explicitToJson: true) this.id,
    required this.recipentUserId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.readAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.referenceDocumentPath,
    this.notificationTopic,
    this.workPlaceId,
    this.title,
    this.body,
    this.type,
    final Map<String, StoredData>? mediaData,
    this.didCompleteRequest = false,
  }) : _mediaData = mediaData;

  factory _$AppNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppNotificationImplFromJson(json);

  @override
  @JsonSerializable(explicitToJson: true)
  final String? id;
  @override
  final String recipentUserId;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? readAt;
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
  final String? referenceDocumentPath;
  @override
  final String? notificationTopic;
  @override
  final String? workPlaceId;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final AppNotificationType? type;
  final Map<String, StoredData>? _mediaData;
  @override
  Map<String, StoredData>? get mediaData {
    final value = _mediaData;
    if (value == null) return null;
    if (_mediaData is EqualUnmodifiableMapView) return _mediaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool didCompleteRequest;

  @override
  String toString() {
    return 'AppNotification(id: $id, recipentUserId: $recipentUserId, readAt: $readAt, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, referenceDocumentPath: $referenceDocumentPath, notificationTopic: $notificationTopic, workPlaceId: $workPlaceId, title: $title, body: $body, type: $type, mediaData: $mediaData, didCompleteRequest: $didCompleteRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipentUserId, recipentUserId) ||
                other.recipentUserId == recipentUserId) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.referenceDocumentPath, referenceDocumentPath) ||
                other.referenceDocumentPath == referenceDocumentPath) &&
            (identical(other.notificationTopic, notificationTopic) ||
                other.notificationTopic == notificationTopic) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(
              other._mediaData,
              _mediaData,
            ) &&
            (identical(other.didCompleteRequest, didCompleteRequest) ||
                other.didCompleteRequest == didCompleteRequest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    recipentUserId,
    readAt,
    createdAt,
    createdBy,
    updatedAt,
    referenceDocumentPath,
    notificationTopic,
    workPlaceId,
    title,
    body,
    type,
    const DeepCollectionEquality().hash(_mediaData),
    didCompleteRequest,
  );

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      __$$AppNotificationImplCopyWithImpl<_$AppNotificationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppNotificationImplToJson(this);
  }
}

abstract class _AppNotification implements AppNotification {
  const factory _AppNotification({
    @JsonSerializable(explicitToJson: true) final String? id,
    required final String recipentUserId,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? readAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String? referenceDocumentPath,
    final String? notificationTopic,
    final String? workPlaceId,
    final String? title,
    final String? body,
    final AppNotificationType? type,
    final Map<String, StoredData>? mediaData,
    final bool didCompleteRequest,
  }) = _$AppNotificationImpl;

  factory _AppNotification.fromJson(Map<String, dynamic> json) =
      _$AppNotificationImpl.fromJson;

  @override
  @JsonSerializable(explicitToJson: true)
  String? get id;
  @override
  String get recipentUserId;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get readAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt;
  @override
  String get createdBy;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt;
  @override
  String? get referenceDocumentPath;
  @override
  String? get notificationTopic;
  @override
  String? get workPlaceId;
  @override
  String? get title;
  @override
  String? get body;
  @override
  AppNotificationType? get type;
  @override
  Map<String, StoredData>? get mediaData;
  @override
  bool get didCompleteRequest;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
