// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      userId: json['userId'] as String?,
      token: json['token'] as String?,
      stepId: (json['stepId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
      'stepId': instance.stepId,
    };
