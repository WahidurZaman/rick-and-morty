import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'info.dart';
import 'result.dart';

part 'charecter_model_response.g.dart';

@JsonSerializable()
class CharecterModelResponse extends Equatable {
  final Info? info;
  final List<Result>? results;

  const CharecterModelResponse({this.info, this.results});

  factory CharecterModelResponse.fromJson(Map<String, dynamic> json) {
    return _$CharecterModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CharecterModelResponseToJson(this);

  CharecterModelResponse copyWith({
    Info? info,
    List<Result>? results,
  }) {
    return CharecterModelResponse(
      info: info ?? this.info,
      results: results ?? this.results,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [info, results];
}
