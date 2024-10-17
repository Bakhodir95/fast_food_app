import 'package:fast_food_app/data/models/auth_request/auth_request.dart';
import 'package:fast_food_app/data/models/auth_response/auth_response.dart';
import 'package:fast_food_app/data/services/auth_api_service.dart';
import 'package:fast_food_app/data/services/auth_local_service.dart';

class AuthRepository {
  final AuthApiService authApiService;
  final AuthLocalService authLocalService;

  AuthRepository({
    required this.authApiService,
    required this.authLocalService,
  });

  Future<AuthResponse> register(AuthRequest request) async {
    final AuthResponse authResponse = await authApiService.register(request);
    await authLocalService.saveToken(authResponse);
    return authResponse;
  }

  Future<void> logout() async {
    await authLocalService.deleteToken();
  }

  Future<bool> sendPhoneNumber(String phoneNumber) async {
    final bool authresponse = await authApiService.registerPhone(phoneNumber);
    return authresponse;
  }
}
