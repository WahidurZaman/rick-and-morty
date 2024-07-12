part of 'episode_bloc.dart';

@freezed
class EpisodeEvent with _$EpisodeEvent {
  const factory EpisodeEvent.episodeDataLoaded() = _EpisodeDataLoaded;
}
