// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

IconModel _$IconModelFromJson(Map<String, dynamic> json) {
  return _IconModel.fromJson(json);
}

/// @nodoc
mixin _$IconModel {
  String get unicode => throw _privateConstructorUsedError;
  String get style => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get family => throw _privateConstructorUsedError;

  /// Serializes this IconModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IconModelCopyWith<IconModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconModelCopyWith<$Res> {
  factory $IconModelCopyWith(IconModel value, $Res Function(IconModel) then) =
      _$IconModelCopyWithImpl<$Res, IconModel>;
  @useResult
  $Res call({String unicode, String style, String? name, String? family});
}

/// @nodoc
class _$IconModelCopyWithImpl<$Res, $Val extends IconModel>
    implements $IconModelCopyWith<$Res> {
  _$IconModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unicode = null,
    Object? style = null,
    Object? name = freezed,
    Object? family = freezed,
  }) {
    return _then(
      _value.copyWith(
            unicode:
                null == unicode
                    ? _value.unicode
                    : unicode // ignore: cast_nullable_to_non_nullable
                        as String,
            style:
                null == style
                    ? _value.style
                    : style // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            family:
                freezed == family
                    ? _value.family
                    : family // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IconModelImplCopyWith<$Res>
    implements $IconModelCopyWith<$Res> {
  factory _$$IconModelImplCopyWith(
    _$IconModelImpl value,
    $Res Function(_$IconModelImpl) then,
  ) = __$$IconModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String unicode, String style, String? name, String? family});
}

/// @nodoc
class __$$IconModelImplCopyWithImpl<$Res>
    extends _$IconModelCopyWithImpl<$Res, _$IconModelImpl>
    implements _$$IconModelImplCopyWith<$Res> {
  __$$IconModelImplCopyWithImpl(
    _$IconModelImpl _value,
    $Res Function(_$IconModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unicode = null,
    Object? style = null,
    Object? name = freezed,
    Object? family = freezed,
  }) {
    return _then(
      _$IconModelImpl(
        unicode:
            null == unicode
                ? _value.unicode
                : unicode // ignore: cast_nullable_to_non_nullable
                    as String,
        style:
            null == style
                ? _value.style
                : style // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        family:
            freezed == family
                ? _value.family
                : family // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IconModelImpl extends _IconModel {
  const _$IconModelImpl({
    required this.unicode,
    required this.style,
    this.name,
    this.family,
  }) : super._();

  factory _$IconModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IconModelImplFromJson(json);

  @override
  final String unicode;
  @override
  final String style;
  @override
  final String? name;
  @override
  final String? family;

  @override
  String toString() {
    return 'IconModel(unicode: $unicode, style: $style, name: $name, family: $family)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconModelImpl &&
            (identical(other.unicode, unicode) || other.unicode == unicode) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unicode, style, name, family);

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IconModelImplCopyWith<_$IconModelImpl> get copyWith =>
      __$$IconModelImplCopyWithImpl<_$IconModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IconModelImplToJson(this);
  }
}

abstract class _IconModel extends IconModel {
  const factory _IconModel({
    required final String unicode,
    required final String style,
    final String? name,
    final String? family,
  }) = _$IconModelImpl;
  const _IconModel._() : super._();

  factory _IconModel.fromJson(Map<String, dynamic> json) =
      _$IconModelImpl.fromJson;

  @override
  String get unicode;
  @override
  String get style;
  @override
  String? get name;
  @override
  String? get family;

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IconModelImplCopyWith<_$IconModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
