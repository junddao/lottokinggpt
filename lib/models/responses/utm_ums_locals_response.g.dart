// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utm_ums_locals_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtmUmsLocalsResponse _$UtmUmsLocalsResponseFromJson(
        Map<String, dynamic> json) =>
    UtmUmsLocalsResponse(
      locals:
          UtmUmsLocalResponse.fromJson(json['locals'] as Map<String, dynamic>),
      countOfTotal: json['countOfTotal'] as num,
    );

Map<String, dynamic> _$UtmUmsLocalsResponseToJson(
        UtmUmsLocalsResponse instance) =>
    <String, dynamic>{
      'locals': instance.locals,
      'countOfTotal': instance.countOfTotal,
    };
