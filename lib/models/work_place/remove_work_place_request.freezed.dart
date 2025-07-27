// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_work_place_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RemoveWorkPlaceRequest _$RemoveWorkPlaceRequestFromJson(
  Map<String, dynamic> json,
) {
  return _RemoveWorkPlaceRequest.fromJson(json);
}

/// @nodoc
mixin _$RemoveWorkPlaceRequest {
  String get currentUserId => throw _privateConstructorUsedError;
  String get workPlaceId => throw _privateConstructorUsedError;
  List<String> get workPlacePositionIds => throw _privateConstructorUsedError;

  /// Serializes this RemoveWorkPlaceRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemoveWorkPlaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemoveWorkPlaceRequestCopyWith<RemoveWorkPlaceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveWorkPlaceRequestCopyWith<$Res> {
  factory $RemoveWorkPlaceRequestCopyWith(
    RemoveWorkPlaceRequest value,
    $Res Function(RemoveWorkPlaceRequest) then,
  ) = _$RemoveWorkPlaceRequestCopyWithImpl<$Res, RemoveWorkPlaceRequest>;
  @useResult
  $Res call({
    String currentUserId,
    String workPlaceId,
    List<String> workPlacePositionIds,
  });
}

/// @nodoc
class _$RemoveWorkPlaceRequestCopyWithImpl<
  $Res,
  $Val extends RemoveWorkPlaceRequest
>
    implements $RemoveWorkPlaceRequestCopyWith<$Res> {
  _$RemoveWorkPlaceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemoveWorkPlaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = null,
    Object? workPlaceId = null,
    Object? workPlacePositionIds = null,
  }) {
    return _then(
      _value.copyWith(
            currentUserId:
                null == currentUserId
                    ? _value.currentUserId
                    : currentUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlaceId:
                null == workPlaceId
                    ? _value.workPlaceId
                    : workPlaceId // ignore: cast_nullable_to_non_nullable
                        as String,
            workPlacePositionIds:
                null == workPlacePositionIds
                    ? _value.workPlacePositionIds
                    : workPlacePositionIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RemoveWorkPlaceRequestImplCopyWith<$Res>
    implements $RemoveWorkPlaceRequestCopyWith<$Res> {
  factory _$$RemoveWorkPlaceRequestImplCopyWith(
    _$RemoveWorkPlaceRequestImpl value,
    $Res Function(_$RemoveWorkPlaceRequestImpl) then,
  ) = __$$RemoveWorkPlaceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String currentUserId,
    String workPlaceId,
    List<String> workPlacePositionIds,
  });
}

/// @nodoc
class __$$RemoveWorkPlaceRequestImplCopyWithImpl<$Res>
    extends
        _$RemoveWorkPlaceRequestCopyWithImpl<$Res, _$RemoveWorkPlaceRequestImpl>
    implements _$$RemoveWorkPlaceRequestImplCopyWith<$Res> {
  __$$RemoveWorkPlaceRequestImplCopyWithImpl(
    _$RemoveWorkPlaceRequestImpl _value,
    $Res Function(_$RemoveWorkPlaceRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RemoveWorkPlaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = null,
    Object? workPlaceId = null,
    Object? workPlacePositionIds = null,
  }) {
    return _then(
      _$RemoveWorkPlaceRequestImpl(
        currentUserId:
            null == currentUserId
                ? _value.currentUserId
                : currentUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlaceId:
            null == workPlaceId
                ? _value.workPlaceId
                : workPlaceId // ignore: cast_nullable_to_non_nullable
                    as String,
        workPlacePositionIds:
            null == workPlacePositionIds
                ? _value._workPlacePositionIds
                : workPlacePositionIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveWorkPlaceRequestImpl implements _RemoveWorkPlaceRequest {
  const _$RemoveWorkPlaceRequestImpl({
    required this.currentUserId,
    required this.workPlaceId,
    required final List<String> workPlacePositionIds,
  }) : _workPlacePositionIds = workPlacePositionIds;

  factory _$RemoveWorkPlaceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveWorkPlaceRequestImplFromJson(json);

  @override
  final String currentUserId;
  @override
  final String workPlaceId;
  final List<String> _workPlacePositionIds;
  @override
  List<String> get workPlacePositionIds {
    if (_workPlacePositionIds is EqualUnmodifiableListView)
      return _workPlacePositionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workPlacePositionIds);
  }

  @override
  String toString() {
    return 'RemoveWorkPlaceRequest(currentUserId: $currentUserId, workPlaceId: $workPlaceId, workPlacePositionIds: $workPlacePositionIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveWorkPlaceRequestImpl &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.workPlaceId, workPlaceId) ||
                other.workPlaceId == workPlaceId) &&
            const DeepCollectionEquality().equals(
              other._workPlacePositionIds,
              _workPlacePositionIds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentUserId,
    workPlaceId,
    const DeepCollectionEquality().hash(_workPlacePositionIds),
  );

  /// Create a copy of RemoveWorkPlaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveWorkPlaceRequestImplCopyWith<_$RemoveWorkPlaceRequestImpl>
  get copyWith =>
      __$$RemoveWorkPlaceRequestImplCopyWithImpl<_$RemoveWorkPlaceRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveWorkPlaceRequestImplToJson(this);
  }
}

abstract class _RemoveWorkPlaceRequest implements RemoveWorkPlaceRequest {
  const factory _RemoveWorkPlaceRequest({
    required final String currentUserId,
    required final String workPlaceId,
    required final List<String> workPlacePositionIds,
  }) = _$RemoveWorkPlaceRequestImpl;

  factory _RemoveWorkPlaceRequest.fromJson(Map<String, dynamic> json) =
      _$RemoveWorkPlaceRequestImpl.fromJson;

  @override
  String get currentUserId;
  @override
  String get workPlaceId;
  @override
  List<String> get workPlacePositionIds;

  /// Create a copy of RemoveWorkPlaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveWorkPlaceRequestImplCopyWith<_$RemoveWorkPlaceRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
