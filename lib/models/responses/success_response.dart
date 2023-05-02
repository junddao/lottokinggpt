import 'package:json_annotation/json_annotation.dart';

part 'success_response.g.dart';

@JsonSerializable()
class SuccessResponse {
  final String success;

  SuccessResponse({required this.success});

  factory SuccessResponse.fromJson(Map<String, dynamic> json) => _$SuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessResponseToJson(this);
}
