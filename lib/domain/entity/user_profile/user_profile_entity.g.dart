// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileEntityImpl _$$UserProfileEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileEntityImpl(
      username: json['username'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      fullname: json['fullName'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      cityName: json['cityName'] as String? ?? '',
      schoolName: json['schoolName'] as String? ?? '',
      year: (json['year'] as num?)?.toInt() ?? 0,
      money: (json['money'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 0,
      exp: (json['exp'] as num?)?.toInt() ?? 0,
      sp: (json['sp'] as num?)?.toInt() ?? 0,
      totalFriend: (json['totalFriend'] as num?)?.toInt() ?? 0,
      totalFollower: (json['totalFollower'] as num?)?.toInt() ?? 0,
      totalFollowing: (json['totalFollowing'] as num?)?.toInt() ?? 0,
      totalPost: (json['totalPost'] as num?)?.toInt() ?? 0,
      totalTest: (json['totalTest'] as num?)?.toInt() ?? 0,
      coverUrl: json['coverUrl'] as String? ?? '',
      lastSession: json['lastSession'] as String? ?? '',
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      stepId: (json['stepId'] as num?)?.toInt() ?? 0,
      isMyAccount: json['isMyAccount'] as bool? ?? true,
      isEnabledNotification: json['isEnabledNotification'] as bool? ?? true,
      isEnabledSoundNotification:
          json['isEnabledSoundNotification'] as bool? ?? true,
      isLocked: json['isLocked'] as bool? ?? false,
      globalId: (json['globalId'] as num?)?.toInt() ?? 0,
      id: json['id'] as String? ?? '',
      email: json['email'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      listSubjectName: json['listSubjectName'] as String? ?? '',
      cityId: (json['cityId'] as num?)?.toInt() ?? 0,
      schoolId: (json['schoolId'] as num?)?.toInt() ?? 0,
      roleId: (json['roleId'] as num?)?.toInt() ?? 0,
      userRoleId: (json['userRoleId'] as num?)?.toInt() ?? 0,
      isEnableVoteApp: json['isEnableVoteApp'] as bool? ?? false,
      isLogging: json['isLogging'] as bool? ?? false,
      birthDay: json['birthDay'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$UserProfileEntityImplToJson(
        _$UserProfileEntityImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'phone': instance.phone,
      'fullName': instance.fullname,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'cityName': instance.cityName,
      'schoolName': instance.schoolName,
      'year': instance.year,
      'money': instance.money,
      'level': instance.level,
      'exp': instance.exp,
      'sp': instance.sp,
      'totalFriend': instance.totalFriend,
      'totalFollower': instance.totalFollower,
      'totalFollowing': instance.totalFollowing,
      'totalPost': instance.totalPost,
      'totalTest': instance.totalTest,
      'coverUrl': instance.coverUrl,
      'lastSession': instance.lastSession,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'stepId': instance.stepId,
      'isMyAccount': instance.isMyAccount,
      'isEnabledNotification': instance.isEnabledNotification,
      'isEnabledSoundNotification': instance.isEnabledSoundNotification,
      'isLocked': instance.isLocked,
      'globalId': instance.globalId,
      'id': instance.id,
      'email': instance.email,
      'avatar': instance.avatar,
      'listSubjectName': instance.listSubjectName,
      'cityId': instance.cityId,
      'schoolId': instance.schoolId,
      'roleId': instance.roleId,
      'userRoleId': instance.userRoleId,
      'isEnableVoteApp': instance.isEnableVoteApp,
      'isLogging': instance.isLogging,
      'birthDay': instance.birthDay,
      'location': instance.location,
    };
