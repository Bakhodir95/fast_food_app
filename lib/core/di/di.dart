import 'package:dio/dio.dart';
import 'package:fast_food_app/core/network/dio_client.dart';
import 'package:fast_food_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:fast_food_app/data/services/auth_api_service.dart';
import 'package:fast_food_app/data/services/auth_local_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> dependencyInit() async {
  final preferance = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => preferance);
  getIt.registerLazySingleton(() => DioClient(dio: Dio()));

  // Services
  getIt.registerLazySingleton(() => AuthApiService());
  getIt.registerLazySingleton(() => AuthLocalService());

  // Repositories
  getIt.registerSingleton(
    AuthRepository(
      authApiService: getIt.get<AuthApiService>(),
      authLocalService: getIt.get<AuthLocalService>(),
    ),
  );
}
