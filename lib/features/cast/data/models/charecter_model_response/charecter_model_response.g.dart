// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charecter_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharecterModelResponse _$CharecterModelResponseFromJson(
        Map<String, dynamic> json) =>
    CharecterModelResponse(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharecterModelResponseToJson(
        CharecterModelResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
