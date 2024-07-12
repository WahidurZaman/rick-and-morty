// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModelResponse _$LocationModelResponseFromJson(
        Map<String, dynamic> json) =>
    LocationModelResponse(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationModelResponseToJson(
        LocationModelResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
