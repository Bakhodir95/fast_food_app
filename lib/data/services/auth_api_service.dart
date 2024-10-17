import 'package:dio/dio.dart';
import 'package:fast_food_app/core/di/di.dart';
import 'package:fast_food_app/data/models/auth_request/auth_request.dart';
import 'package:fast_food_app/data/models/auth_response/auth_response.dart';
import 'package:fast_food_app/core/network/dio_client.dart';

class AuthApiService {
  final _dio = getIt.get<DioClient>().dio;

  Future<AuthResponse> register(AuthRequest request) async {
    try {
      final response = await _dio.post("/register", data: request.toMap());
      return AuthResponse.fromMap(response.data);
    } on DioException catch (e) {
      print("Login Service Dio Error:$e");
      rethrow;
    } catch (e) {
      print("Login Service Error:$e");
      rethrow;
    }
  }

  Future<bool> registerPhone(String phone) async {
    try {
      final response =
          await _dio.post("/register/phone", data: {'phone': phone});
      return true;
    } on DioException catch (e) {
      print("Phone Registration Service Dio Error:$e");
      rethrow;
    } catch (e) {
      print("Phone Registration Service Error:$e");
      rethrow;
    }
  }
}
