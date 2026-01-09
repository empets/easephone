import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_request.freezed.dart';
part 'home_request.g.dart';

@freezed
abstract class RequestLike with _$RequestLike {
  factory RequestLike({required String userId, required int compter, required String date}) =
      _SRequestLike;

  factory RequestLike.fromJson(Map<String, dynamic> json) =>
      _$RequestLikeFromJson(json);
}