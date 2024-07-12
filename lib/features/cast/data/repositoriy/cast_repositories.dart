import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/services/dio_client.dart';
import '../../../home/data/models/charecter_model_response/charecter_model_response.dart';

class CastRepository {
  late DioClient dioClient;

  final String _baseUrl = dotenv.env["BASE_URL"] ?? "";

  CastRepository() {
    var dio = Dio();

    dioClient = DioClient(_baseUrl, dio);
  }

  Future<CharecterModelResponse> castRepository() async {
    try {
      final resp = await dioClient.get('/character');

      CharecterModelResponse castResponse =
          CharecterModelResponse.fromJson(jsonDecode(jsonEncode(resp)));

      return castResponse;
    } catch (e) {
      rethrow;
    }
  }
}
