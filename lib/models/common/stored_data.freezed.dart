// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stored_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoredData _$StoredDataFromJson(Map<String, dynamic> json) {
  return _StoredData.fromJson(json);
}

/// @nodoc
mixin _$StoredData {
  String? get id => throw _privateConstructorUsedError;
  int? get ordinal => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  FilePurpose? get filePurpose => throw _privateConstructorUsedError;
  String? get referencedDocumentId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get dataPath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  XFile? get xFile => throw _privateConstructorUsedError;
  DataType? get dataType => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get uploadedAt => throw _privateConstructorUsedError;
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get expiredAt => throw _privateConstructorUsedError;

  /// Serializes this StoredData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoredData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoredDataCopyWith<StoredData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoredDataCopyWith<$Res> {
  factory $StoredDataCopyWith(
    StoredData value,
    $Res Function(StoredData) then,
  ) = _$StoredDataCopyWithImpl<$Res, StoredData>;
  @useResult
  $Res call({
    String? id,
    int? ordinal,
    String? userId,
    FilePurpose? filePurpose,
    String? referencedDocumentId,
    String? url,
    String? name,
    String? dataPath,
    @JsonKey(ignore: true) XFile? xFile,
    DataType? dataType,
    String? mimeType,
    int? size,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? uploadedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? expiredAt,
  });
}

/// @nodoc
class _$StoredDataCopyWithImpl<$Res, $Val extends StoredData>
    implements $StoredDataCopyWith<$Res> {
  _$StoredDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoredData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ordinal = freezed,
    Object? userId = freezed,
    Object? filePurpose = freezed,
    Object? referencedDocumentId = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? dataPath = freezed,
    Object? xFile = freezed,
    Object? dataType = freezed,
    Object? mimeType = freezed,
    Object? size = freezed,
    Object? uploadedAt = freezed,
    Object? expiredAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            ordinal:
                freezed == ordinal
                    ? _value.ordinal
                    : ordinal // ignore: cast_nullable_to_non_nullable
                        as int?,
            userId:
                freezed == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String?,
            filePurpose:
                freezed == filePurpose
                    ? _value.filePurpose
                    : filePurpose // ignore: cast_nullable_to_non_nullable
                        as FilePurpose?,
            referencedDocumentId:
                freezed == referencedDocumentId
                    ? _value.referencedDocumentId
                    : referencedDocumentId // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            dataPath:
                freezed == dataPath
                    ? _value.dataPath
                    : dataPath // ignore: cast_nullable_to_non_nullable
                        as String?,
            xFile:
                freezed == xFile
                    ? _value.xFile
                    : xFile // ignore: cast_nullable_to_non_nullable
                        as XFile?,
            dataType:
                freezed == dataType
                    ? _value.dataType
                    : dataType // ignore: cast_nullable_to_non_nullable
                        as DataType?,
            mimeType:
                freezed == mimeType
                    ? _value.mimeType
                    : mimeType // ignore: cast_nullable_to_non_nullable
                        as String?,
            size:
                freezed == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as int?,
            uploadedAt:
                freezed == uploadedAt
                    ? _value.uploadedAt
                    : uploadedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            expiredAt:
                freezed == expiredAt
                    ? _value.expiredAt
                    : expiredAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoredDataImplCopyWith<$Res>
    implements $StoredDataCopyWith<$Res> {
  factory _$$StoredDataImplCopyWith(
    _$StoredDataImpl value,
    $Res Function(_$StoredDataImpl) then,
  ) = __$$StoredDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    int? ordinal,
    String? userId,
    FilePurpose? filePurpose,
    String? referencedDocumentId,
    String? url,
    String? name,
    String? dataPath,
    @JsonKey(ignore: true) XFile? xFile,
    DataType? dataType,
    String? mimeType,
    int? size,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? uploadedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    DateTime? expiredAt,
  });
}

/// @nodoc
class __$$StoredDataImplCopyWithImpl<$Res>
    extends _$StoredDataCopyWithImpl<$Res, _$StoredDataImpl>
    implements _$$StoredDataImplCopyWith<$Res> {
  __$$StoredDataImplCopyWithImpl(
    _$StoredDataImpl _value,
    $Res Function(_$StoredDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoredData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ordinal = freezed,
    Object? userId = freezed,
    Object? filePurpose = freezed,
    Object? referencedDocumentId = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? dataPath = freezed,
    Object? xFile = freezed,
    Object? dataType = freezed,
    Object? mimeType = freezed,
    Object? size = freezed,
    Object? uploadedAt = freezed,
    Object? expiredAt = freezed,
  }) {
    return _then(
      _$StoredDataImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        ordinal:
            freezed == ordinal
                ? _value.ordinal
                : ordinal // ignore: cast_nullable_to_non_nullable
                    as int?,
        userId:
            freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String?,
        filePurpose:
            freezed == filePurpose
                ? _value.filePurpose
                : filePurpose // ignore: cast_nullable_to_non_nullable
                    as FilePurpose?,
        referencedDocumentId:
            freezed == referencedDocumentId
                ? _value.referencedDocumentId
                : referencedDocumentId // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        dataPath:
            freezed == dataPath
                ? _value.dataPath
                : dataPath // ignore: cast_nullable_to_non_nullable
                    as String?,
        xFile:
            freezed == xFile
                ? _value.xFile
                : xFile // ignore: cast_nullable_to_non_nullable
                    as XFile?,
        dataType:
            freezed == dataType
                ? _value.dataType
                : dataType // ignore: cast_nullable_to_non_nullable
                    as DataType?,
        mimeType:
            freezed == mimeType
                ? _value.mimeType
                : mimeType // ignore: cast_nullable_to_non_nullable
                    as String?,
        size:
            freezed == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as int?,
        uploadedAt:
            freezed == uploadedAt
                ? _value.uploadedAt
                : uploadedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        expiredAt:
            freezed == expiredAt
                ? _value.expiredAt
                : expiredAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoredDataImpl implements _StoredData {
  const _$StoredDataImpl({
    this.id,
    this.ordinal,
    this.userId,
    this.filePurpose,
    this.referencedDocumentId,
    this.url,
    this.name,
    this.dataPath,
    @JsonKey(ignore: true) this.xFile,
    this.dataType,
    this.mimeType,
    this.size,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.uploadedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    this.expiredAt,
  });

  factory _$StoredDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoredDataImplFromJson(json);

  @override
  final String? id;
  @override
  final int? ordinal;
  @override
  final String? userId;
  @override
  final FilePurpose? filePurpose;
  @override
  final String? referencedDocumentId;
  @override
  final String? url;
  @override
  final String? name;
  @override
  final String? dataPath;
  @override
  @JsonKey(ignore: true)
  final XFile? xFile;
  @override
  final DataType? dataType;
  @override
  final String? mimeType;
  @override
  final int? size;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? uploadedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  final DateTime? expiredAt;

  @override
  String toString() {
    return 'StoredData(id: $id, ordinal: $ordinal, userId: $userId, filePurpose: $filePurpose, referencedDocumentId: $referencedDocumentId, url: $url, name: $name, dataPath: $dataPath, xFile: $xFile, dataType: $dataType, mimeType: $mimeType, size: $size, uploadedAt: $uploadedAt, expiredAt: $expiredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoredDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ordinal, ordinal) || other.ordinal == ordinal) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.filePurpose, filePurpose) ||
                other.filePurpose == filePurpose) &&
            (identical(other.referencedDocumentId, referencedDocumentId) ||
                other.referencedDocumentId == referencedDocumentId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dataPath, dataPath) ||
                other.dataPath == dataPath) &&
            (identical(other.xFile, xFile) || other.xFile == xFile) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    ordinal,
    userId,
    filePurpose,
    referencedDocumentId,
    url,
    name,
    dataPath,
    xFile,
    dataType,
    mimeType,
    size,
    uploadedAt,
    expiredAt,
  );

  /// Create a copy of StoredData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoredDataImplCopyWith<_$StoredDataImpl> get copyWith =>
      __$$StoredDataImplCopyWithImpl<_$StoredDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoredDataImplToJson(this);
  }
}

abstract class _StoredData implements StoredData {
  const factory _StoredData({
    final String? id,
    final int? ordinal,
    final String? userId,
    final FilePurpose? filePurpose,
    final String? referencedDocumentId,
    final String? url,
    final String? name,
    final String? dataPath,
    @JsonKey(ignore: true) final XFile? xFile,
    final DataType? dataType,
    final String? mimeType,
    final int? size,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? uploadedAt,
    @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
    final DateTime? expiredAt,
  }) = _$StoredDataImpl;

  factory _StoredData.fromJson(Map<String, dynamic> json) =
      _$StoredDataImpl.fromJson;

  @override
  String? get id;
  @override
  int? get ordinal;
  @override
  String? get userId;
  @override
  FilePurpose? get filePurpose;
  @override
  String? get referencedDocumentId;
  @override
  String? get url;
  @override
  String? get name;
  @override
  String? get dataPath;
  @override
  @JsonKey(ignore: true)
  XFile? get xFile;
  @override
  DataType? get dataType;
  @override
  String? get mimeType;
  @override
  int? get size;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get uploadedAt;
  @override
  @JsonKey(toJson: Helpers.dateToJson, fromJson: Helpers.dateFromJson)
  DateTime? get expiredAt;

  /// Create a copy of StoredData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoredDataImplCopyWith<_$StoredDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
