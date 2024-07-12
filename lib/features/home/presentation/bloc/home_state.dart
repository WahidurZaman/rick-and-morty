part of 'home_bloc.dart';

enum HomeStatus { initial, success, failure }

@Freezed(copyWith: true, equal: true)
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
  }) = _HomeState;
}
