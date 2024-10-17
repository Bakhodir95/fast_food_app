import 'package:fast_food_app/core/di/di.dart';
import 'package:fast_food_app/cubits/auth_cubit.dart';
import 'package:fast_food_app/cubits/auth_state.dart';
import 'package:fast_food_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:fast_food_app/data/services/auth_api_service.dart';
import 'package:fast_food_app/data/services/auth_local_service.dart';
import 'package:fast_food_app/presentation/screens/auth/confirmation_screen.dart';
import 'package:fast_food_app/presentation/screens/auth/register_screen.dart';
import 'package:fast_food_app/presentation/screens/home/main_screen.dart';
import 'package:fast_food_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencyInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 899),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) {
                return AuthCubit(
                    authRepository: AuthRepository(
                        authApiService: AuthApiService(),
                        authLocalService: AuthLocalService()));
              },
            )
          ],
          child: MaterialApp(
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.white,
            ),
            debugShowCheckedModeBanner: false,
            home: BlocBuilder<AuthCubit, AuthState>(
              buildWhen: (previous, current) {
                return current is! ErrorState && current is! LoadingState;
              },
              builder: (context, state) {
                if (state is InitialAuthState) {
                  return RegisterScreen();
                }

                if (state is RegisterState) {
                  return ConfirmationScreen(phoneNumber: state.phoeNumber);
                }

                if (state is RegisteredState) {
                  return const MainScreen();
                }

                return const SizedBox();
              },
            ),
          ),
        );
      },
    );
  }
}
