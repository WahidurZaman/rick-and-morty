import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'info.dart';
import 'result.dart';

part 'episodes_model_response.g.dart';

@JsonSerializable()
class EpisodesModelResponse extends Equatable {
  final Info? info;
  final List<Result>? results;

  const EpisodesModelResponse({this.info, this.results});

  factory EpisodesModelResponse.fromJson(Map<String, dynamic> json) {
    return _$EpisodesModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EpisodesModelResponseToJson(this);

  EpisodesModelResponse copyWith({
    Info? info,
    List<Result>? results,
  }) {
    return EpisodesModelResponse(
      info: info ?? this.info,
      results: results ?? this.results,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [info, results];
}
