part of 'location_bloc.dart';

enum LocationStatus { initial, success, failure }

@Freezed(copyWith: true, equal: true)
class LocationState with _$LocationState {
  const factory LocationState({
    @Default(LocationModelResponse())
    LocationModelResponse locationResponseData,
    @Default(LocationStatus.initial) LocationStatus status,
  }) = _LocationState;
}
