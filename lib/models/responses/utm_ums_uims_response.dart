import 'package:json_annotation/json_annotation.dart';
import 'package:lottokinggpt/models/responses/utm_ums_uim_response.dart';
import 'package:lottokinggpt/models/responses/utm_ums_uims_count_response.dart';

part 'utm_ums_uims_response.g.dart';

@JsonSerializable()
class UtmUmsUimsResponse {
  final List<UtmUmsUimResponse> uims;
  final UtmUmsUimsCountResponse countOfTotal;

  UtmUmsUimsResponse({
    required this.uims,
    required this.countOfTotal,
  });

  factory UtmUmsUimsResponse.fromJson(Map<String, dynamic> json) => _$UtmUmsUimsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UtmUmsUimsResponseToJson(this);
}
