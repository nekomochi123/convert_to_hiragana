import 'package:dio/dio.dart';
import 'package:hiragana/foundation/dot_env_service.dart';

class ApiClient {
  ApiClient._();

  static final _shared = ApiClient._();

  static ApiClient get shared => _shared;

  final _dio = Dio(BaseOptions(baseUrl: 'https://labs.goo.ne.jp/'));

  Future<Map<String, dynamic>> post({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.post<Map<String, dynamic>>(
      path,
      data: {
        'app_id': DotEnvService.shared.hiraganaApiKey,
        ...?queryParameters,
      },
    );

    final statusCode = response.statusCode;
    print(statusCode);
    if (statusCode == null) {
      throw Exception();
    } else if (400 <= statusCode && statusCode <= 499) {
      throw Exception();
    } else if (500 <= statusCode && statusCode <= 599) {
      throw Exception();
    }
    return response.data!;
  }
}
