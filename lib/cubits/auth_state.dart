import 'package:fast_food_app/data/models/auth_response/auth_response.dart';

sealed class AuthState {}

final class InitialAuthState extends AuthState {}

final class LoadingState extends AuthState {}

final class SmsCodeSentState extends AuthState {
  bool smsCode;
  SmsCodeSentState(this.smsCode);
}

final class LoadedState extends AuthState {
  AuthResponse auth;
  LoadedState(this.auth);
}

final class ErrorState extends AuthState {
  String error;
  ErrorState(this.error);
}
