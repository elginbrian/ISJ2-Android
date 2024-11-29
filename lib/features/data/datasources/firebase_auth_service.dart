import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:isj2_android_flutter/features/data/models/user_model.dart';

class FirebaseAuthService {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  FirebaseAuthService({firebase_auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  Future<UserModel> register(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final firebaseUser = userCredential.user;

      if (firebaseUser != null) {
        return UserModel(id: firebaseUser.uid, email: firebaseUser.email ?? '');
      } else {
        throw Exception('User registration failed');
      }
    } catch (e) {
      throw Exception('Error registering user: $e');
    }
  }

  Future<UserModel> login(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final firebaseUser = userCredential.user;

      if (firebaseUser != null) {
        return UserModel(id: firebaseUser.uid, email: firebaseUser.email ?? '');
      } else {
        throw Exception('User login failed');
      }
    } catch (e) {
      throw Exception('Error logging in user: $e');
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
