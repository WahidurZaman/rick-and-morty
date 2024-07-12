part of 'cast_bloc.dart';

enum CastStatus { initial, success, failure }

@Freezed(copyWith: true, equal: true)
class CastState with _$CastState {
  const factory CastState({
    @Default(CharecterModelResponse()) CharecterModelResponse castResponseData,
    @Default(CastStatus.initial) CastStatus status,
  }) = _CastState;
}
