import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../data/models/location_model_response/location_model_response.dart';
import '../../data/repositories/location_repositories.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationRepository locationRepository;

  LocationBloc({required this.locationRepository})
      : super(const _LocationState()) {
    on<LocationEvent>((events, emit) async {
      await events.map(
        locationDataLoaded: (event) async =>
            await _locationDataLoaded(event, emit),
      );
    });
  }

  _locationDataLoaded(
      _LocationDataLoaded event, Emitter<LocationState> emit) async {
    try {
      emit(state.copyWith(
        status: LocationStatus.initial,
      ));
      final episodeResponse = await locationRepository.episodeRepository();
      emit(state.copyWith(
          locationResponseData: episodeResponse,
          status: LocationStatus.success));
    } catch (e) {
      emit(state.copyWith(status: LocationStatus.failure));
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
