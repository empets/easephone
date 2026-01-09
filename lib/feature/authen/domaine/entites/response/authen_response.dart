import 'package:freezed_annotation/freezed_annotation.dart';
part 'authen_response.freezed.dart';
part 'authen_response.g.dart';

@freezed
abstract class ProfileUser with _$ProfileUser {
  factory ProfileUser({required String email, required String password, required String userId}) =
      _SProfileUser;

  factory ProfileUser.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserFromJson(json);
}
