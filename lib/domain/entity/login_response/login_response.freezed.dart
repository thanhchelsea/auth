// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponseEntity _$LoginResponseEntityFromJson(Map<String, dynamic> json) {
  return _LoginResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseEntity {
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'stepId')
  int? get stepId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseEntityCopyWith<LoginResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseEntityCopyWith<$Res> {
  factory $LoginResponseEntityCopyWith(
          LoginResponseEntity value, $Res Function(LoginResponseEntity) then) =
      _$LoginResponseEntityCopyWithImpl<$Res, LoginResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'stepId') int? stepId});
}

/// @nodoc
class _$LoginResponseEntityCopyWithImpl<$Res, $Val extends LoginResponseEntity>
    implements $LoginResponseEntityCopyWith<$Res> {
  _$LoginResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? token = freezed,
    Object? stepId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResponseEntityImplCopyWith<$Res>
    implements $LoginResponseEntityCopyWith<$Res> {
  factory _$$LoginResponseEntityImplCopyWith(_$LoginResponseEntityImpl value,
          $Res Function(_$LoginResponseEntityImpl) then) =
      __$$LoginResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'stepId') int? stepId});
}

/// @nodoc
class __$$LoginResponseEntityImplCopyWithImpl<$Res>
    extends _$LoginResponseEntityCopyWithImpl<$Res, _$LoginResponseEntityImpl>
    implements _$$LoginResponseEntityImplCopyWith<$Res> {
  __$$LoginResponseEntityImplCopyWithImpl(_$LoginResponseEntityImpl _value,
      $Res Function(_$LoginResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? token = freezed,
    Object? stepId = freezed,
  }) {
    return _then(_$LoginResponseEntityImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      stepId: freezed == stepId
          ? _value.stepId
          : stepId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseEntityImpl implements _LoginResponseEntity {
  _$LoginResponseEntityImpl(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'token') this.token,
      @JsonKey(name: 'stepId') this.stepId});

  factory _$LoginResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'stepId')
  final int? stepId;

  @override
  String toString() {
    return 'LoginResponseEntity(userId: $userId, token: $token, stepId: $stepId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.stepId, stepId) || other.stepId == stepId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, token, stepId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseEntityImplCopyWith<_$LoginResponseEntityImpl> get copyWith =>
      __$$LoginResponseEntityImplCopyWithImpl<_$LoginResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseEntity implements LoginResponseEntity {
  factory _LoginResponseEntity(
      {@JsonKey(name: 'userId') final String? userId,
      @JsonKey(name: 'token') final String? token,
      @JsonKey(name: 'stepId') final int? stepId}) = _$LoginResponseEntityImpl;

  factory _LoginResponseEntity.fromJson(Map<String, dynamic> json) =
      _$LoginResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'stepId')
  int? get stepId;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseEntityImplCopyWith<_$LoginResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
