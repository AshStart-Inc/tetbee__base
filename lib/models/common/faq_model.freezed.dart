// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FAQModel _$FAQModelFromJson(Map<String, dynamic> json) {
  return _FAQModel.fromJson(json);
}

/// @nodoc
mixin _$FAQModel {
  String? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  String? get isoCode => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;

  /// Serializes this FAQModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FAQModelCopyWith<FAQModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQModelCopyWith<$Res> {
  factory $FAQModelCopyWith(FAQModel value, $Res Function(FAQModel) then) =
      _$FAQModelCopyWithImpl<$Res, FAQModel>;
  @useResult
  $Res call({
    String? id,
    String? label,
    String? info,
    String? isoCode,
    String? postalCode,
    String? province,
  });
}

/// @nodoc
class _$FAQModelCopyWithImpl<$Res, $Val extends FAQModel>
    implements $FAQModelCopyWith<$Res> {
  _$FAQModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? info = freezed,
    Object? isoCode = freezed,
    Object? postalCode = freezed,
    Object? province = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            label:
                freezed == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String?,
            info:
                freezed == info
                    ? _value.info
                    : info // ignore: cast_nullable_to_non_nullable
                        as String?,
            isoCode:
                freezed == isoCode
                    ? _value.isoCode
                    : isoCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            postalCode:
                freezed == postalCode
                    ? _value.postalCode
                    : postalCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            province:
                freezed == province
                    ? _value.province
                    : province // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FAQModelImplCopyWith<$Res>
    implements $FAQModelCopyWith<$Res> {
  factory _$$FAQModelImplCopyWith(
    _$FAQModelImpl value,
    $Res Function(_$FAQModelImpl) then,
  ) = __$$FAQModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? label,
    String? info,
    String? isoCode,
    String? postalCode,
    String? province,
  });
}

/// @nodoc
class __$$FAQModelImplCopyWithImpl<$Res>
    extends _$FAQModelCopyWithImpl<$Res, _$FAQModelImpl>
    implements _$$FAQModelImplCopyWith<$Res> {
  __$$FAQModelImplCopyWithImpl(
    _$FAQModelImpl _value,
    $Res Function(_$FAQModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? info = freezed,
    Object? isoCode = freezed,
    Object? postalCode = freezed,
    Object? province = freezed,
  }) {
    return _then(
      _$FAQModelImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        label:
            freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String?,
        info:
            freezed == info
                ? _value.info
                : info // ignore: cast_nullable_to_non_nullable
                    as String?,
        isoCode:
            freezed == isoCode
                ? _value.isoCode
                : isoCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        postalCode:
            freezed == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        province:
            freezed == province
                ? _value.province
                : province // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQModelImpl implements _FAQModel {
  const _$FAQModelImpl({
    this.id,
    this.label,
    this.info,
    this.isoCode,
    this.postalCode,
    this.province,
  });

  factory _$FAQModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? label;
  @override
  final String? info;
  @override
  final String? isoCode;
  @override
  final String? postalCode;
  @override
  final String? province;

  @override
  String toString() {
    return 'FAQModel(id: $id, label: $label, info: $info, isoCode: $isoCode, postalCode: $postalCode, province: $province)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, info, isoCode, postalCode, province);

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQModelImplCopyWith<_$FAQModelImpl> get copyWith =>
      __$$FAQModelImplCopyWithImpl<_$FAQModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQModelImplToJson(this);
  }
}

abstract class _FAQModel implements FAQModel {
  const factory _FAQModel({
    final String? id,
    final String? label,
    final String? info,
    final String? isoCode,
    final String? postalCode,
    final String? province,
  }) = _$FAQModelImpl;

  factory _FAQModel.fromJson(Map<String, dynamic> json) =
      _$FAQModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get label;
  @override
  String? get info;
  @override
  String? get isoCode;
  @override
  String? get postalCode;
  @override
  String? get province;

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FAQModelImplCopyWith<_$FAQModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
