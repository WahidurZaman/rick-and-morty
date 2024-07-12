import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../core/services/dio_client.dart';

class HomeRepository {
  late DioClient dioClient;

  final String _baseUrl = dotenv.env["BASE_URL"] ?? "";

  HomeRepository() {
    var dio = Dio();

    dioClient = DioClient(_baseUrl, dio);
  }
}
