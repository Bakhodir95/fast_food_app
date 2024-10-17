// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

class AuthRequest extends Equatable {
  final String phone;
  const AuthRequest({
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      "phone": phone,
    };
  }

  @override
  List<Object> get props => [phone];
}
