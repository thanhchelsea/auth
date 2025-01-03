import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    @Default('') final String username,
    @Default('') final String phone,
    @Default('') @JsonKey(name: "fullName") final String fullname,
    @Default('') final String firstName,
    @Default('') final String lastName,
    @Default('') final String cityName,
    @Default('') final String schoolName,
    @Default(0) final int year,
    @Default(0) final int money,
    @Default(0) final int level,
    @Default(0) final int exp,
    @Default(0) final int sp,
    @Default(0) final int totalFriend,
    @Default(0) final int totalFollower,
    @Default(0) final int totalFollowing,
    @Default(0) final int totalPost,
    @Default(0) final int totalTest,
    @Default('') final String coverUrl,
    @Default('') final String lastSession,
    final DateTime? dateCreated,
    @Default(0) final int stepId,
    @Default(true) final bool isMyAccount,
    @Default(true) final bool isEnabledNotification,
    @Default(true) final bool isEnabledSoundNotification,
    @Default(false) final bool isLocked,
    @Default(0) final int globalId,
    @Default('') final String id,
    @Default('') final String email,
    @Default('') final String avatar,
    @Default('') final String listSubjectName,
    @Default(0) final int cityId,
    @Default(0) final int schoolId,
    @Default(0) final int roleId,
    @Default(0) final int userRoleId,
    @Default(false) bool isEnableVoteApp,
    @Default(false) bool isLogging,
    final String? birthDay,
    final String? location,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
