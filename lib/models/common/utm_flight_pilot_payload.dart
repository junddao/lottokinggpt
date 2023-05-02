import 'package:json_annotation/json_annotation.dart';

part 'utm_flight_pilot_payload.g.dart';

@JsonSerializable()
class UtmFlightPilotPayload {
  final String name;
  final String birthdate;
  final String phone;
  final String subPhone;
  final String fax;
  final String zipCode;
  final String addressArea;
  final String addressDetail;
  
  UtmFlightPilotPayload({
    required this.name,
    required this.birthdate,
    required this.phone,
    required this.subPhone,
    required this.fax,
    required this.zipCode,
    required this.addressArea,
    required this.addressDetail,
  });

  factory UtmFlightPilotPayload.fromJson(Map<String, dynamic> json) => _$UtmFlightPilotPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$UtmFlightPilotPayloadToJson(this);
}
