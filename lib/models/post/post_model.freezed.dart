// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  String? get id => throw _privateConstructorUsedError;
  bool get isUploading => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  PostTarget get postTarget => throw _privateConstructorUsedError;
  PostType get postType => throw _privateConstructorUsedError;
  String get workPlaceId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  bool get commentDisabled => throw _privateConstructorUsedError;
  bool get pined => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  List<String> get notificationPositionIds =>
      throw _privateConstructorUsedError;
  List<String> get selectedPositions => throw _privateConstructorUsedError;
  List<String> get views => throw _privateConstructorUsedError;
  List<String> get confirms => throw _privateConstructorUsedError;
  List<LinkModel> get linkes => throw _privateConstructorUsedError;
  List<VotingOption> get votingOptions => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get votingExpiresAt => throw _privateConstructorUsedError;

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call({
    String? id,
    bool isUploading,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    PostTarget postTarget,
    PostType postType,
    String workPlaceId,
    String title,
    String contents,
    bool commentDisabled,
    bool pined,
    bool deleted,
    List<String> notificationPositionIds,
    List<String> selectedPositions,
    List<String> views,
    List<String> confirms,
    List<LinkModel> linkes,
    List<VotingOption> votingOptions,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? votingExpiresAt,
  });
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isUploading = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? postTarget = null,
    Object? postType = null,
    Object? workPlaceId = null,
    Object? title = null,
    Object? contents = null,
    Object? commentDisabled = null,
    Object? pined = null,
    Object? deleted = null,
    Object? notificationPositionIds = null,
    Object? selectedPositions = null,
    Object? views = null,
    Object? confirms = null,
    Object? linkes = null,
    Object? votingOptions = null,
    Object? votingExpiresAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            isUploading:
                null == isUploading
                    ? _value.isUploading
                    : isUploading // ignore: cast_nullable_to_non_nullable
                        as bool,
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
            postTarget:
                null == postTarget
                    ? _value.postTarget
                    : postTarget // ignore: cast_nullable_to_non_nullable
                        as PostTarget,
            postType:
                null == postType
                    ? _value.postType
                    : postType // ignore: cast_nullable_to_non_nullable
                        as PostType,
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            contents:
                null == contents
                    ? _value.contents
                    : contents // ignore: cast_nullable_to_non_nullable
                        as String,
            commentDisabled:
                null == commentDisabled
                    ? _value.commentDisabled
                    : commentDisabled // ignore: cast_nullable_to_non_nullable
                        as bool,
            pined:
                null == pined
                    ? _value.pined
                    : pined // ignore: cast_nullable_to_non_nullable
                        as bool,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
            notificationPositionIds:
                null == notificationPositionIds
                    ? _value.notificationPositionIds
                    : notificationPositionIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            selectedPositions:
                null == selectedPositions
                    ? _value.selectedPositions
                    : selectedPositions // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            views:
                null == views
                    ? _value.views
                    : views // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            confirms:
                null == confirms
                    ? _value.confirms
                    : confirms // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            linkes:
                null == linkes
                    ? _value.linkes
                    : linkes // ignore: cast_nullable_to_non_nullable
                        as List<LinkModel>,
            votingOptions:
                null == votingOptions
                    ? _value.votingOptions
                    : votingOptions // ignore: cast_nullable_to_non_nullable
                        as List<VotingOption>,
            votingExpiresAt:
                freezed == votingExpiresAt
                    ? _value.votingExpiresAt
                    : votingExpiresAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
    _$PostModelImpl value,
    $Res Function(_$PostModelImpl) then,
  ) = __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    bool isUploading,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    PostTarget postTarget,
    PostType postType,
    String workPlaceId,
    String title,
    String contents,
    bool commentDisabled,
    bool pined,
    bool deleted,
    List<String> notificationPositionIds,
    List<String> selectedPositions,
    List<String> views,
    List<String> confirms,
    List<LinkModel> linkes,
    List<VotingOption> votingOptions,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? votingExpiresAt,
  });
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
    _$PostModelImpl _value,
    $Res Function(_$PostModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isUploading = null,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? postTarget = null,
    Object? postType = null,
    Object? workPlaceId = null,
    Object? title = null,
    Object? contents = null,
    Object? commentDisabled = null,
    Object? pined = null,
    Object? deleted = null,
    Object? notificationPositionIds = null,
    Object? selectedPositions = null,
    Object? views = null,
    Object? confirms = null,
    Object? linkes = null,
    Object? votingOptions = null,
    Object? votingExpiresAt = freezed,
  }) {
    return _then(
      _$PostModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        isUploading:
            null == isUploading
                ? _value.isUploading
                : isUploading // ignore: cast_nullable_to_non_nullable
                    as bool,
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
        postTarget:
            null == postTarget
                ? _value.postTarget
                : postTarget // ignore: cast_nullable_to_non_nullable
                    as PostTarget,
        postType:
            null == postType
                ? _value.postType
                : postType // ignore: cast_nullable_to_non_nullable
                    as PostType,
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        contents:
            null == contents
                ? _value.contents
                : contents // ignore: cast_nullable_to_non_nullable
                    as String,
        commentDisabled:
            null == commentDisabled
                ? _value.commentDisabled
                : commentDisabled // ignore: cast_nullable_to_non_nullable
                    as bool,
        pined:
            null == pined
                ? _value.pined
                : pined // ignore: cast_nullable_to_non_nullable
                    as bool,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
        notificationPositionIds:
            null == notificationPositionIds
                ? _value._notificationPositionIds
                : notificationPositionIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        selectedPositions:
            null == selectedPositions
                ? _value._selectedPositions
                : selectedPositions // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        views:
            null == views
                ? _value._views
                : views // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        confirms:
            null == confirms
                ? _value._confirms
                : confirms // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        linkes:
            null == linkes
                ? _value._linkes
                : linkes // ignore: cast_nullable_to_non_nullable
                    as List<LinkModel>,
        votingOptions:
            null == votingOptions
                ? _value._votingOptions
                : votingOptions // ignore: cast_nullable_to_non_nullable
                    as List<VotingOption>,
        votingExpiresAt:
            freezed == votingExpiresAt
                ? _value.votingExpiresAt
                : votingExpiresAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PostModelImpl implements _PostModel {
  const _$PostModelImpl({
    this.id,
    this.isUploading = false,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    required this.postTarget,
    required this.postType,
    required this.workPlaceId,
    required this.title,
    required this.contents,
    this.commentDisabled = false,
    this.pined = false,
    this.deleted = false,
    final List<String> notificationPositionIds = const [],
    final List<String> selectedPositions = const [],
    final List<String> views = const [],
    final List<String> confirms = const [],
    final List<LinkModel> linkes = const [],
    final List<VotingOption> votingOptions = const [],
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.votingExpiresAt,
  }) : _notificationPositionIds = notificationPositionIds,
       _selectedPositions = selectedPositions,
       _views = views,
       _confirms = confirms,
       _linkes = linkes,
       _votingOptions = votingOptions;

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final bool isUploading;
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
  @override
  final PostTarget postTarget;
  @override
  final PostType postType;
  @override
  final String workPlaceId;
  @override
  final String title;
  @override
  final String contents;
  @override
  @JsonKey()
  final bool commentDisabled;
  @override
  @JsonKey()
  final bool pined;
  @override
  @JsonKey()
  final bool deleted;
  final List<String> _notificationPositionIds;
  @override
  @JsonKey()
  List<String> get notificationPositionIds {
    if (_notificationPositionIds is EqualUnmodifiableListView)
      return _notificationPositionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationPositionIds);
  }

  final List<String> _selectedPositions;
  @override
  @JsonKey()
  List<String> get selectedPositions {
    if (_selectedPositions is EqualUnmodifiableListView)
      return _selectedPositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPositions);
  }

  final List<String> _views;
  @override
  @JsonKey()
  List<String> get views {
    if (_views is EqualUnmodifiableListView) return _views;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_views);
  }

  final List<String> _confirms;
  @override
  @JsonKey()
  List<String> get confirms {
    if (_confirms is EqualUnmodifiableListView) return _confirms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_confirms);
  }

  final List<LinkModel> _linkes;
  @override
  @JsonKey()
  List<LinkModel> get linkes {
    if (_linkes is EqualUnmodifiableListView) return _linkes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_linkes);
  }

  final List<VotingOption> _votingOptions;
  @override
  @JsonKey()
  List<VotingOption> get votingOptions {
    if (_votingOptions is EqualUnmodifiableListView) return _votingOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_votingOptions);
  }

  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? votingExpiresAt;

  @override
  String toString() {
    return 'PostModel(id: $id, isUploading: $isUploading, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, postTarget: $postTarget, postType: $postType, workPlaceId: $workPlaceId, title: $title, contents: $contents, commentDisabled: $commentDisabled, pined: $pined, deleted: $deleted, notificationPositionIds: $notificationPositionIds, selectedPositions: $selectedPositions, views: $views, confirms: $confirms, linkes: $linkes, votingOptions: $votingOptions, votingExpiresAt: $votingExpiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isUploading, isUploading) ||
                other.isUploading == isUploading) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.postTarget, postTarget) ||
                other.postTarget == postTarget) &&
            (identical(other.postType, postType) ||
                other.postType == postType) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.commentDisabled, commentDisabled) ||
                other.commentDisabled == commentDisabled) &&
            (identical(other.pined, pined) || other.pined == pined) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            const DeepCollectionEquality().equals(
              other._notificationPositionIds,
              _notificationPositionIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._selectedPositions,
              _selectedPositions,
            ) &&
            const DeepCollectionEquality().equals(other._views, _views) &&
            const DeepCollectionEquality().equals(other._confirms, _confirms) &&
            const DeepCollectionEquality().equals(other._linkes, _linkes) &&
            const DeepCollectionEquality().equals(
              other._votingOptions,
              _votingOptions,
            ) &&
            (identical(other.votingExpiresAt, votingExpiresAt) ||
                other.votingExpiresAt == votingExpiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    isUploading,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    postTarget,
    postType,
    workPlaceId,
    title,
    contents,
    commentDisabled,
    pined,
    deleted,
    const DeepCollectionEquality().hash(_notificationPositionIds),
    const DeepCollectionEquality().hash(_selectedPositions),
    const DeepCollectionEquality().hash(_views),
    const DeepCollectionEquality().hash(_confirms),
    const DeepCollectionEquality().hash(_linkes),
    const DeepCollectionEquality().hash(_votingOptions),
    votingExpiresAt,
  ]);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(this);
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel({
    final String? id,
    final bool isUploading,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    required final PostTarget postTarget,
    required final PostType postType,
    required final String workPlaceId,
    required final String title,
    required final String contents,
    final bool commentDisabled,
    final bool pined,
    final bool deleted,
    final List<String> notificationPositionIds,
    final List<String> selectedPositions,
    final List<String> views,
    final List<String> confirms,
    final List<LinkModel> linkes,
    final List<VotingOption> votingOptions,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? votingExpiresAt,
  }) = _$PostModelImpl;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  String? get id;
  @override
  bool get isUploading;
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
  PostTarget get postTarget;
  @override
  PostType get postType;
  @override
  String get workPlaceId;
  @override
  String get title;
  @override
  String get contents;
  @override
  bool get commentDisabled;
  @override
  bool get pined;
  @override
  bool get deleted;
  @override
  List<String> get notificationPositionIds;
  @override
  List<String> get selectedPositions;
  @override
  List<String> get views;
  @override
  List<String> get confirms;
  @override
  List<LinkModel> get linkes;
  @override
  List<VotingOption> get votingOptions;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get votingExpiresAt;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
