// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_place_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkPlaceType _$WorkPlaceTypeFromJson(Map<String, dynamic> json) {
  return _WorkPlaceType.fromJson(json);
}

/// @nodoc
mixin _$WorkPlaceType {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get ordinal => throw _privateConstructorUsedError;

  /// Serializes this WorkPlaceType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkPlaceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkPlaceTypeCopyWith<WorkPlaceType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPlaceTypeCopyWith<$Res> {
  factory $WorkPlaceTypeCopyWith(
    WorkPlaceType value,
    $Res Function(WorkPlaceType) then,
  ) = _$WorkPlaceTypeCopyWithImpl<$Res, WorkPlaceType>;
  @useResult
  $Res call({String id, String name, int ordinal});
}

/// @nodoc
class _$WorkPlaceTypeCopyWithImpl<$Res, $Val extends WorkPlaceType>
    implements $WorkPlaceTypeCopyWith<$Res> {
  _$WorkPlaceTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkPlaceType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? ordinal = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            ordinal:
                null == ordinal
                    ? _value.ordinal
                    : ordinal // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkPlaceTypeImplCopyWith<$Res>
    implements $WorkPlaceTypeCopyWith<$Res> {
  factory _$$WorkPlaceTypeImplCopyWith(
    _$WorkPlaceTypeImpl value,
    $Res Function(_$WorkPlaceTypeImpl) then,
  ) = __$$WorkPlaceTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int ordinal});
}

/// @nodoc
class __$$WorkPlaceTypeImplCopyWithImpl<$Res>
    extends _$WorkPlaceTypeCopyWithImpl<$Res, _$WorkPlaceTypeImpl>
    implements _$$WorkPlaceTypeImplCopyWith<$Res> {
  __$$WorkPlaceTypeImplCopyWithImpl(
    _$WorkPlaceTypeImpl _value,
    $Res Function(_$WorkPlaceTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkPlaceType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? ordinal = null}) {
    return _then(
      _$WorkPlaceTypeImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        ordinal:
            null == ordinal
                ? _value.ordinal
                : ordinal // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WorkPlaceTypeImpl implements _WorkPlaceType {
  const _$WorkPlaceTypeImpl({
    required this.id,
    required this.name,
    required this.ordinal,
  });

  factory _$WorkPlaceTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkPlaceTypeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int ordinal;

  @override
  String toString() {
    return 'WorkPlaceType(id: $id, name: $name, ordinal: $ordinal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkPlaceTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ordinal, ordinal) || other.ordinal == ordinal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, ordinal);

  /// Create a copy of WorkPlaceType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkPlaceTypeImplCopyWith<_$WorkPlaceTypeImpl> get copyWith =>
      __$$WorkPlaceTypeImplCopyWithImpl<_$WorkPlaceTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkPlaceTypeImplToJson(this);
  }
}

abstract class _WorkPlaceType implements WorkPlaceType {
  const factory _WorkPlaceType({
    required final String id,
    required final String name,
    required final int ordinal,
  }) = _$WorkPlaceTypeImpl;

  factory _WorkPlaceType.fromJson(Map<String, dynamic> json) =
      _$WorkPlaceTypeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get ordinal;

  /// Create a copy of WorkPlaceType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkPlaceTypeImplCopyWith<_$WorkPlaceTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
