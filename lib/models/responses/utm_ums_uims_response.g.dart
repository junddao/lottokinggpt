// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_uims_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsUimsResponse _$UtmUmsUimsResponseFromJson(Map<String, dynamic> json) =>
    UtmUmsUimsResponse(
      uims: (json['uims'] as List<dynamic>)
          .map((e) => UtmUmsUimResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      countOfTotal: UtmUmsUimsCountResponse.fromJson(
          json['countOfTotal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UtmUmsUimsResponseToJson(UtmUmsUimsResponse instance) =>
    <String, dynamic>{
      'uims': instance.uims,
      'countOfTotal': instance.countOfTotal,
    };
