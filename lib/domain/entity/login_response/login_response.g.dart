// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseEntityImpl _$$LoginResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseEntityImpl(
      userId: json['userId'] as String?,
      token: json['token'] as String?,
      stepId: (json['stepId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoginResponseEntityImplToJson(
        _$LoginResponseEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
      'stepId': instance.stepId,
    };
