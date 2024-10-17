sealed class AuthState {}

final class InitialAuthState extends AuthState {}

final class LoadingState extends AuthState {}

final class SmsCodeSentState extends AuthState {
  bool isSended;
  SmsCodeSentState({required this.isSended});
}

final class ErrorState extends AuthState {
  String error;
  ErrorState(this.error);
}

final class RegisteredState extends AuthState {}

final class RegisterState extends AuthState {
  final String phoeNumber;

  RegisterState({required this.phoeNumber});
}
