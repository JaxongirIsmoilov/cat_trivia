// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Facts _$FactsFromJson(Map<String, dynamic> json) {
  return _Facts.fromJson(json);
}

/// @nodoc
mixin _$Facts {
  Status? get status => throw _privateConstructorUsedError;
  String? get sId => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get iV => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  bool? get used => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FactsCopyWith<Facts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactsCopyWith<$Res> {
  factory $FactsCopyWith(Facts value, $Res Function(Facts) then) =
      _$FactsCopyWithImpl<$Res, Facts>;
  @useResult
  $Res call(
      {Status? status,
      String? sId,
      String? user,
      String? text,
      int? iV,
      String? source,
      String? updatedAt,
      String? type,
      String? createdAt,
      bool? deleted,
      bool? used});

  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$FactsCopyWithImpl<$Res, $Val extends Facts>
    implements $FactsCopyWith<$Res> {
  _$FactsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? sId = freezed,
    Object? user = freezed,
    Object? text = freezed,
    Object? iV = freezed,
    Object? source = freezed,
    Object? updatedAt = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? deleted = freezed,
    Object? used = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      iV: freezed == iV
          ? _value.iV
          : iV // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      used: freezed == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FactsImplCopyWith<$Res> implements $FactsCopyWith<$Res> {
  factory _$$FactsImplCopyWith(
          _$FactsImpl value, $Res Function(_$FactsImpl) then) =
      __$$FactsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status? status,
      String? sId,
      String? user,
      String? text,
      int? iV,
      String? source,
      String? updatedAt,
      String? type,
      String? createdAt,
      bool? deleted,
      bool? used});

  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$FactsImplCopyWithImpl<$Res>
    extends _$FactsCopyWithImpl<$Res, _$FactsImpl>
    implements _$$FactsImplCopyWith<$Res> {
  __$$FactsImplCopyWithImpl(
      _$FactsImpl _value, $Res Function(_$FactsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? sId = freezed,
    Object? user = freezed,
    Object? text = freezed,
    Object? iV = freezed,
    Object? source = freezed,
    Object? updatedAt = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? deleted = freezed,
    Object? used = freezed,
  }) {
    return _then(_$FactsImpl(
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == iV
          ? _value.iV
          : iV // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FactsImpl implements _Facts {
  const _$FactsImpl(
      this.status,
      this.sId,
      this.user,
      this.text,
      this.iV,
      this.source,
      this.updatedAt,
      this.type,
      this.createdAt,
      this.deleted,
      this.used);

  factory _$FactsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FactsImplFromJson(json);

  @override
  final Status? status;
  @override
  final String? sId;
  @override
  final String? user;
  @override
  final String? text;
  @override
  final int? iV;
  @override
  final String? source;
  @override
  final String? updatedAt;
  @override
  final String? type;
  @override
  final String? createdAt;
  @override
  final bool? deleted;
  @override
  final bool? used;

  @override
  String toString() {
    return 'Facts(status: $status, sId: $sId, user: $user, text: $text, iV: $iV, source: $source, updatedAt: $updatedAt, type: $type, createdAt: $createdAt, deleted: $deleted, used: $used)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.iV, iV) || other.iV == iV) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.used, used) || other.used == used));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, sId, user, text, iV,
      source, updatedAt, type, createdAt, deleted, used);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FactsImplCopyWith<_$FactsImpl> get copyWith =>
      __$$FactsImplCopyWithImpl<_$FactsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FactsImplToJson(
      this,
    );
  }
}

abstract class _Facts implements Facts {
  const factory _Facts(
      final Status? status,
      final String? sId,
      final String? user,
      final String? text,
      final int? iV,
      final String? source,
      final String? updatedAt,
      final String? type,
      final String? createdAt,
      final bool? deleted,
      final bool? used) = _$FactsImpl;

  factory _Facts.fromJson(Map<String, dynamic> json) = _$FactsImpl.fromJson;

  @override
  Status? get status;
  @override
  String? get sId;
  @override
  String? get user;
  @override
  String? get text;
  @override
  int? get iV;
  @override
  String? get source;
  @override
  String? get updatedAt;
  @override
  String? get type;
  @override
  String? get createdAt;
  @override
  bool? get deleted;
  @override
  bool? get used;
  @override
  @JsonKey(ignore: true)
  _$$FactsImplCopyWith<_$FactsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  bool? get verified => throw _privateConstructorUsedError;
  int? get sentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({bool? verified, int? sentCount});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = freezed,
    Object? sentCount = freezed,
  }) {
    return _then(_value.copyWith(
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      sentCount: freezed == sentCount
          ? _value.sentCount
          : sentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? verified, int? sentCount});
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = freezed,
    Object? sentCount = freezed,
  }) {
    return _then(_$StatusImpl(
      freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == sentCount
          ? _value.sentCount
          : sentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StatusImpl implements _Status {
  const _$StatusImpl(this.verified, this.sentCount);

  factory _$StatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusImplFromJson(json);

  @override
  final bool? verified;
  @override
  final int? sentCount;

  @override
  String toString() {
    return 'Status(verified: $verified, sentCount: $sentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.sentCount, sentCount) ||
                other.sentCount == sentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, verified, sentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusImplToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(final bool? verified, final int? sentCount) =
      _$StatusImpl;

  factory _Status.fromJson(Map<String, dynamic> json) = _$StatusImpl.fromJson;

  @override
  bool? get verified;
  @override
  int? get sentCount;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
