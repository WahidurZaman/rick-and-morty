import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../data/models/episodes_model_response/episodes_model_response.dart';
import '../../data/repositories/episode_repositories.dart';

part 'episode_bloc.freezed.dart';
part 'episode_event.dart';
part 'episode_state.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  final EpisodeRepository episodeRepository;

  EpisodeBloc({required this.episodeRepository})
      : super(const _EpisodeState()) {
    on<EpisodeEvent>((events, emit) async {
      await events.map(
        episodeDataLoaded: (event) async =>
            await _episodeDataLoaded(event, emit),
      );
    });
  }

  _episodeDataLoaded(
      _EpisodeDataLoaded event, Emitter<EpisodeState> emit) async {
    try {
      final episodeResponse = await episodeRepository.episodeRepository();
      emit(state.copyWith(
          episodeResponseData: episodeResponse, status: EpisodeStatus.success));
    } catch (e) {
      emit(state.copyWith(status: EpisodeStatus.failure));
      if (e is DioError) {
        Logger().d(e.message);

        if (e.response != null && e.response!.statusCode != 200) {
          dynamic responseData = e.response!.data;
          String errorMessage = '';

          if (responseData is String) {
            errorMessage = responseData;
          } else if (responseData is Map<String, dynamic>) {
            if (responseData.containsKey('message')) {
              if (responseData['message'] is String) {
                errorMessage = responseData['message'];
              } else if (responseData['message'] is Map<String, dynamic>) {
                Map<String, dynamic> errorMap = responseData['message'];
                errorMessage = errorMap.values.join('\n');
              }
            } else if (responseData.containsKey('errors')) {
              // Extract errors if present
              Map<String, dynamic> errors = responseData['errors'];
              errorMessage = errors.values
                  .expand((element) => element) // Flatten the list of lists
                  .join('\n');
            }
          }

          errorMessage = errorMessage.isNotEmpty
              ? errorMessage
              : 'An unexpected error occurred';

          await Fluttertoast.showToast(
            webPosition: "center",
            msg: errorMessage,
          );
        }
      } else {
        Logger().d(e.toString());
        await Fluttertoast.showToast(
          webPosition: "center",
          msg: 'An unexpected error occurred',
        );
      }
    }
  }
}
