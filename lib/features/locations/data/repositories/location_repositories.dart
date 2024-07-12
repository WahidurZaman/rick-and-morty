import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/services/dio_client.dart';
import '../models/location_model_response/location_model_response.dart';

class LocationRepository {
  late DioClient dioClient;

  final String _baseUrl = dotenv.env["BASE_URL"] ?? "";

  LocationRepository() {
    var dio = Dio();

    dioClient = DioClient(_baseUrl, dio);
  }

  Future<LocationModelResponse> episodeRepository() async {
    try {
      final resp = await dioClient.get('/location');

      LocationModelResponse locationResponse =
          LocationModelResponse.fromJson(jsonDecode(jsonEncode(resp)));

      return locationResponse;
    } catch (e) {
      rethrow;
    }
  }
}
