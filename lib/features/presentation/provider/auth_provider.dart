import 'package:flutter/material.dart';
import 'package:isj2_android_flutter/features/domain/usecases/login_user.dart';
import 'package:isj2_android_flutter/features/domain/usecases/register_user.dart';

class AuthProvider with ChangeNotifier {
  final LoginUser loginUser;
  final RegisterUser registerUser;

  AuthProvider({required this.loginUser, required this.registerUser});

  Future<void> login(String email, String password) async {
    try {
      await loginUser(LoginParams(email: email, password: password));
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> register(String email, String password) async {
    try {
      await registerUser(RegisterParams(email: email, password: password));
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
