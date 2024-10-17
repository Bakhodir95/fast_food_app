import 'package:dio/dio.dart';
import 'package:fast_food_app/core/di/di.dart';
import 'package:fast_food_app/data/services/auth_local_service.dart';

class DioClient {
  late Dio _dio;

  DioClient({required Dio dio}) {
    _dio = dio;
    _dio.options.baseUrl = "http://35.242.245.142:8037";
    _dio.interceptors.add(NetworkInterceptor());
  }

  Dio get dio => _dio;
}

class NetworkInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final authLocalService = getIt.get<AuthLocalService>();
    final token = authLocalService.getToken();
    if (token != null) {
      options.headers = {"Authorization": "Bearer $token"};
    }
    super.onRequest(options, handler);
  }
}