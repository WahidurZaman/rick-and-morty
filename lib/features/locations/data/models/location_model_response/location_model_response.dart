import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'info.dart';
import 'result.dart';

part 'location_model_response.g.dart';

@JsonSerializable()
class LocationModelResponse extends Equatable {
  final Info? info;
  final List<Result>? results;

  const LocationModelResponse({this.info, this.results});

  factory LocationModelResponse.fromJson(Map<String, dynamic> json) {
    return _$LocationModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LocationModelResponseToJson(this);

  LocationModelResponse copyWith({
    Info? info,
    List<Result>? results,
  }) {
    return LocationModelResponse(
      info: info ?? this.info,
      results: results ?? this.results,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [info, results];
}
