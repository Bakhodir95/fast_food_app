import 'package:equatable/equatable.dart';

class RegisterResponse extends Equatable {
  final String accessToken;
  final String refreshToken;

  const RegisterResponse({
    required this.accessToken,
    required this.refreshToken,
  });

  factory RegisterResponse.fromMap(Map<String, dynamic> map) {
    return RegisterResponse(
      accessToken: map['access_token'],
      refreshToken: map['refresh_token'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "access_token": accessToken,
      "refresh_token": refreshToken,
    };
  }

  @override
  List<Object> get props => [accessToken, refreshToken];
}
