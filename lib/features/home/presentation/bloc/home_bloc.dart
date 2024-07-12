import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../data/repositories/home_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(const _HomeState()) {
    on<HomeEvent>((events, emit) async {
      await events.map(
        chatDataLoaded: (event) async => await _chatDataLoaded(event, emit),
      );
    });
  }
  _chatDataLoaded(_ChatDataLoaded event, Emitter<HomeState> emit) async {}
}
