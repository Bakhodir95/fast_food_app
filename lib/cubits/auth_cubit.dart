import 'package:bloc/bloc.dart';
import 'package:fast_food_app/cubits/auth_state.dart';
import 'package:fast_food_app/data/models/auth_request/auth_request.dart';
import 'package:fast_food_app/data/repositories/auth_repository/auth_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit({required this.authRepository}) : super(InitialAuthState());

  Future<void> sendCode(AuthRequest request) async {
    emit(LoadingState());
    try {
       await authRepository.sendPhoneNumber(request);
      emit(RegisterState(phoeNumber: request.phone));
    } catch (e) {
      print('AUTH CUBIT ERRRO: $e');
      emit(ErrorState(e.toString()));
    }
  }

  Future<void> register(Map<String, dynamic> request) async {
    emit(LoadingState());
    await authRepository.register(request);
    emit(RegisteredState());
  }
}
