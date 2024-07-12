import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/services/dio_client.dart';
import '../models/episodes_model_response/episodes_model_response.dart';

class EpisodeRepository {
  late DioClient dioClient;

  final String _baseUrl = dotenv.env["BASE_URL"] ?? "";

  EpisodeRepository() {
    var dio = Dio();

    dioClient = DioClient(_baseUrl, dio);
  }

  Future<EpisodesModelResponse> episodeRepository() async {
    try {
      final resp = await dioClient.get('/episode');

      EpisodesModelResponse episodeResponse =
          EpisodesModelResponse.fromJson(jsonDecode(jsonEncode(resp)));

      return episodeResponse;
    } catch (e) {
      rethrow;
    }
  }
}
