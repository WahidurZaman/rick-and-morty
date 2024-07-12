// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodesModelResponse _$EpisodesModelResponseFromJson(
        Map<String, dynamic> json) =>
    EpisodesModelResponse(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodesModelResponseToJson(
        EpisodesModelResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
