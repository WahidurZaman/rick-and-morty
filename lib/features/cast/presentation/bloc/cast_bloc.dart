import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../home/data/models/charecter_model_response/charecter_model_response.dart';
import '../../data/repositoriy/cast_repositories.dart';

part 'cast_bloc.freezed.dart';
part 'cast_event.dart';
part 'cast_state.dart';

class CastBloc extends Bloc<CastEvent, CastState> {
  final CastRepository castRepository;

  CastBloc({required this.castRepository}) : super(const _CastState()) {
    on<CastEvent>((events, emit) async {
      await events.map(
        castDataLoaded: (event) async => await _castDataLoaded(event, emit),
      );
    });
  }

  _castDataLoaded(_CastDataLoaded event, Emitter<CastState> emit) async {
    try {
      final castResponse = await castRepository.castRepository();
      emit(state.copyWith(
          castResponseData: castResponse, status: CastStatus.success));
    } catch (e) {
      emit(state.copyWith(status: CastStatus.failure));
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
