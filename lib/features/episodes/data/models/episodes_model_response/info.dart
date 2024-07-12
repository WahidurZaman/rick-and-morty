import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info extends Equatable {
  final int? count;
  final int? pages;
  final String? next;
  final dynamic prev;

  const Info({this.count, this.pages, this.next, this.prev});

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);

  Info copyWith({
    int? count,
    int? pages,
    String? next,
    dynamic prev,
  }) {
    return Info(
      count: count ?? this.count,
      pages: pages ?? this.pages,
      next: next ?? this.next,
      prev: prev ?? this.prev,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [count, pages, next, prev];
}
