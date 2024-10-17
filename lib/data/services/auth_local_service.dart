import 'package:fast_food_app/core/di/di.dart';
import 'package:fast_food_app/data/models/register_request/register_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalService {
  final token = "token";
  final refResh = "reshreshtoken";
  final preferance = getIt.get<SharedPreferences>();

  Future<void> saveToken(RegisterResponse auth) async {
    await preferance.setString(token, auth.accessToken);
    await preferance.setString(refResh, auth.refreshToken);
  }

  String? getToken() {
    return preferance.getString(token);
  }

  Future<void> deleteToken() async {
    await preferance.remove(token);
  }
}
