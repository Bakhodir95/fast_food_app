import 'package:dio/dio.dart';
import 'package:fast_food_app/data/models/auth_request/auth_request.dart';
import 'package:fast_food_app/core/network/dio_client.dart';
import 'package:fast_food_app/core/di/di.dart';
import 'package:fast_food_app/data/models/register_request/register_request.dart';

class AuthApiService {
  final _dio = getIt.get<DioClient>().dio;

  Future<bool> sendPhoneNumber(AuthRequest request) async {
    try {
      print(request.toMap());
      final response =
          await _dio.post("/auth/sms/register/phone", data: request.toMap());

      if (response.data['message'] == 'Sms sent successfully') {
        return true;
      }
      return false;
    } on DioException catch (e) {
      print("Send Phone Number Dio Error: $e");
      rethrow;
    } catch (e) {
      print("Send Phone Number Error: $e");
      rethrow;
    }
  }

  Future<RegisterResponse> register(Map<String, dynamic> request) async {
    try {
      final response = await _dio.post(
        "/auth/user/register",
        data: request,
      );
      print(response.data);
      return RegisterResponse.fromMap(response.data);
    } on DioException catch (e) {
      print("SMS Code Verification Dio Error: $e");
      rethrow;
    } catch (e) {
      print("SMS Code Verification Error: $e");
      rethrow;
    }
  }
}
