// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeedbackForm _$FeedbackFormFromJson(Map<String, dynamic> json) {
  return _FeedbackForm.fromJson(json);
}

/// @nodoc
mixin _$FeedbackForm {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  DocumentStatus get status => throw _privateConstructorUsedError;
  List<FeedbackModel> get answers => throw _privateConstructorUsedError;

  /// Serializes this FeedbackForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackFormCopyWith<FeedbackForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackFormCopyWith<$Res> {
  factory $FeedbackFormCopyWith(
    FeedbackForm value,
    $Res Function(FeedbackForm) then,
  ) = _$FeedbackFormCopyWithImpl<$Res, FeedbackForm>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    DocumentStatus status,
    List<FeedbackModel> answers,
  });
}

/// @nodoc
class _$FeedbackFormCopyWithImpl<$Res, $Val extends FeedbackForm>
    implements $FeedbackFormCopyWith<$Res> {
  _$FeedbackFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? status = null,
    Object? answers = null,
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
            updatedBy:
                null == updatedBy
                    ? _value.updatedBy
                    : updatedBy // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as DocumentStatus,
            answers:
                null == answers
                    ? _value.answers
                    : answers // ignore: cast_nullable_to_non_nullable
                        as List<FeedbackModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedbackFormImplCopyWith<$Res>
    implements $FeedbackFormCopyWith<$Res> {
  factory _$$FeedbackFormImplCopyWith(
    _$FeedbackFormImpl value,
    $Res Function(_$FeedbackFormImpl) then,
  ) = __$$FeedbackFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? createdAt,
    String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? updatedAt,
    String updatedBy,
    DocumentStatus status,
    List<FeedbackModel> answers,
  });
}

/// @nodoc
class __$$FeedbackFormImplCopyWithImpl<$Res>
    extends _$FeedbackFormCopyWithImpl<$Res, _$FeedbackFormImpl>
    implements _$$FeedbackFormImplCopyWith<$Res> {
  __$$FeedbackFormImplCopyWithImpl(
    _$FeedbackFormImpl _value,
    $Res Function(_$FeedbackFormImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedbackForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = null,
    Object? status = null,
    Object? answers = null,
  }) {
    return _then(
      _$FeedbackFormImpl(
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
        updatedBy:
            null == updatedBy
                ? _value.updatedBy
                : updatedBy // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as DocumentStatus,
        answers:
            null == answers
                ? _value._answers
                : answers // ignore: cast_nullable_to_non_nullable
                    as List<FeedbackModel>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FeedbackFormImpl implements _FeedbackForm {
  const _$FeedbackFormImpl({
    this.id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.createdAt,
    this.createdBy = '',
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.updatedAt,
    this.updatedBy = '',
    this.status = DocumentStatus.onSubmit,
    final List<FeedbackModel> answers = const [],
  }) : _answers = answers;

  factory _$FeedbackFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackFormImplFromJson(json);

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
  @JsonKey()
  final String updatedBy;
  @override
  @JsonKey()
  final DocumentStatus status;
  final List<FeedbackModel> _answers;
  @override
  @JsonKey()
  List<FeedbackModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'FeedbackForm(id: $id, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, status: $status, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackFormImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    createdBy,
    updatedAt,
    updatedBy,
    status,
    const DeepCollectionEquality().hash(_answers),
  );

  /// Create a copy of FeedbackForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackFormImplCopyWith<_$FeedbackFormImpl> get copyWith =>
      __$$FeedbackFormImplCopyWithImpl<_$FeedbackFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackFormImplToJson(this);
  }
}

abstract class _FeedbackForm implements FeedbackForm {
  const factory _FeedbackForm({
    final String? id,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? createdAt,
    final String createdBy,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? updatedAt,
    final String updatedBy,
    final DocumentStatus status,
    final List<FeedbackModel> answers,
  }) = _$FeedbackFormImpl;

  factory _FeedbackForm.fromJson(Map<String, dynamic> json) =
      _$FeedbackFormImpl.fromJson;

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
  String get updatedBy;
  @override
  DocumentStatus get status;
  @override
  List<FeedbackModel> get answers;

  /// Create a copy of FeedbackForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackFormImplCopyWith<_$FeedbackFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedbackModel _$FeedbackModelFromJson(Map<String, dynamic> json) {
  return _FeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$FeedbackModel {
  String get label => throw _privateConstructorUsedError;
  dynamic get answer => throw _privateConstructorUsedError;

  /// Serializes this FeedbackModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackModelCopyWith<FeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackModelCopyWith<$Res> {
  factory $FeedbackModelCopyWith(
    FeedbackModel value,
    $Res Function(FeedbackModel) then,
  ) = _$FeedbackModelCopyWithImpl<$Res, FeedbackModel>;
  @useResult
  $Res call({String label, dynamic answer});
}

/// @nodoc
class _$FeedbackModelCopyWithImpl<$Res, $Val extends FeedbackModel>
    implements $FeedbackModelCopyWith<$Res> {
  _$FeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? answer = freezed}) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            answer:
                freezed == answer
                    ? _value.answer
                    : answer // ignore: cast_nullable_to_non_nullable
                        as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedbackModelImplCopyWith<$Res>
    implements $FeedbackModelCopyWith<$Res> {
  factory _$$FeedbackModelImplCopyWith(
    _$FeedbackModelImpl value,
    $Res Function(_$FeedbackModelImpl) then,
  ) = __$$FeedbackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, dynamic answer});
}

/// @nodoc
class __$$FeedbackModelImplCopyWithImpl<$Res>
    extends _$FeedbackModelCopyWithImpl<$Res, _$FeedbackModelImpl>
    implements _$$FeedbackModelImplCopyWith<$Res> {
  __$$FeedbackModelImplCopyWithImpl(
    _$FeedbackModelImpl _value,
    $Res Function(_$FeedbackModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? answer = freezed}) {
    return _then(
      _$FeedbackModelImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        answer:
            freezed == answer
                ? _value.answer
                : answer // ignore: cast_nullable_to_non_nullable
                    as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackModelImpl implements _FeedbackModel {
  const _$FeedbackModelImpl({this.label = '', this.answer});

  factory _$FeedbackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackModelImplFromJson(json);

  @override
  @JsonKey()
  final String label;
  @override
  final dynamic answer;

  @override
  String toString() {
    return 'FeedbackModel(label: $label, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    label,
    const DeepCollectionEquality().hash(answer),
  );

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackModelImplCopyWith<_$FeedbackModelImpl> get copyWith =>
      __$$FeedbackModelImplCopyWithImpl<_$FeedbackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackModelImplToJson(this);
  }
}

abstract class _FeedbackModel implements FeedbackModel {
  const factory _FeedbackModel({final String label, final dynamic answer}) =
      _$FeedbackModelImpl;

  factory _FeedbackModel.fromJson(Map<String, dynamic> json) =
      _$FeedbackModelImpl.fromJson;

  @override
  String get label;
  @override
  dynamic get answer;

  /// Create a copy of FeedbackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackModelImplCopyWith<_$FeedbackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
