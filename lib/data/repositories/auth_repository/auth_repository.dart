import 'package:fast_food_app/data/models/auth_request/auth_request.dart';
import 'package:fast_food_app/data/services/auth_api_service.dart';
import 'package:fast_food_app/data/services/auth_local_service.dart';

class AuthRepository {
  final AuthApiService authApiService;
  final AuthLocalService authLocalService;

  AuthRepository({
    required this.authApiService,
    required this.authLocalService,
  });

  Future<void> sendPhoneNumber(AuthRequest request) async {
     await authApiService.sendPhoneNumber(request);
  }

  Future<void> register(Map<String, dynamic> request) async {
    await authApiService.register(request);
  }

  /// Handles user logout by clearing the local token
  Future<void> logout() async {
    await authLocalService.deleteToken();
  }
}
