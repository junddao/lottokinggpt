import 'package:json_annotation/json_annotation.dart';
import 'package:lottokinggpt/models/common/utm_flight_area_payload.dart';
import 'package:lottokinggpt/models/common/utm_flight_device_payload.dart';
import 'package:lottokinggpt/models/common/utm_flight_pilot_payload.dart';
import 'package:lottokinggpt/models/common/utm_flight_plan_payload.dart';

part 'utm_flight_lite_payload.g.dart';

@JsonSerializable()
class UtmFlightLitePayload {
  final String approvalNumber;
  final UtmFlightPilotPayload pilot;
  final UtmFlightPlanPayload plan;
  final List<UtmFlightAreaPayload> areas;
  final UtmFlightDevicePayload device;
  UtmFlightLitePayload({
    required this.approvalNumber,
    required this.pilot,
    required this.plan,
    required this.areas,
    required this.device,
  });

  factory UtmFlightLitePayload.fromJson(Map<String, dynamic> json) => _$UtmFlightLitePayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmFlightLitePayloadToJson(this);
}
