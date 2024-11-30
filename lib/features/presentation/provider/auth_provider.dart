import 'package:flutter/material.dart';
import 'package:isj2_android_flutter/features/domain/usecases/login_user.dart';
import 'package:isj2_android_flutter/features/domain/usecases/register_user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:isj2_android_flutter/features/presentation/screens/notes_screen.dart';

class AuthProvider with ChangeNotifier {
  final LoginUser loginUser;
  final RegisterUser registerUser;

  String? _userId;

  AuthProvider({required this.loginUser, required this.registerUser});

  bool _isLoading = false;
  String? _errorMessage;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> login(String email, String password, BuildContext context) async {
    _setLoading(true);
    _clearError();
    try {
      await loginUser(LoginParams(email: email, password: password));

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const NotesScreen()),
      );
    } catch (e) {
      _setError(e.toString());
    } finally {
      _setLoading(false);
    }
  }

  Future<void> register(String email, String password) async {
    _setLoading(true);
    _clearError();
    try {
      await registerUser(RegisterParams(email: email, password: password));
    } catch (e) {
      _setError(e.toString());
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void _setError(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  void _clearError() {
    _errorMessage = null;
  }
}
