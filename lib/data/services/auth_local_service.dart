import 'package:fast_food_app/core/di/di.dart';
import 'package:fast_food_app/data/models/auth_response/auth_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalService {
  final token = "token";
  final preferance = getIt.get<SharedPreferences>();

  Future<void> saveToken(AuthResponse auth) async {
    await preferance.setString(token, auth.token);
  }

  String? getToken() {
    return preferance.getString(token);
  }

  Future<void> deleteToken() async {
    await preferance.remove(token);
  }
}
