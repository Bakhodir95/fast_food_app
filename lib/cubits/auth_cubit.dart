import 'package:bloc/bloc.dart';
import 'package:fast_food_app/cubits/auth_state.dart';
import 'package:fast_food_app/data/models/auth_request/auth_request.dart';
import 'package:fast_food_app/data/repositories/auth_repository/auth_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit({required this.authRepository}) : super(InitialAuthState());

  Future<void> register(AuthRequest request) async {
    emit(LoadingState());
    try {
      final auth = await authRepository.register(request);
      emit(LoadedState(auth));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  Future<void> sendPhoneNumber(String phoneNumber) async {
    emit(LoadingState());
    try {
      final response = await authRepository.sendPhoneNumber(phoneNumber);
      emit(SmsCodeSentState(response));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
