part of 'episode_bloc.dart';

enum EpisodeStatus { initial, success, failure }

@Freezed(copyWith: true, equal: true)
class EpisodeState with _$EpisodeState {
  const factory EpisodeState({
    @Default(EpisodesModelResponse()) EpisodesModelResponse episodeResponseData,
    @Default(EpisodeStatus.initial) EpisodeStatus status,
  }) = _EpisodeState;
}
