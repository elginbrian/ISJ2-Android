import 'package:firebase_auth/firebase_auth.dart';
import 'package:isj2_android_flutter/core/usecases/usecases.dart';
import 'package:isj2_android_flutter/features/domain/entities/user.dart';
import 'package:isj2_android_flutter/features/domain/repositories/auth_repository.dart';

class RegisterUser implements UseCase<UserEntity, RegisterParams> {
  final AuthRepository repository;

  RegisterUser(this.repository);

  @override
  Future<UserEntity> call(RegisterParams params) async {
    return await repository.register(params.email, params.password);
  }
}

class RegisterParams {
  final String email;
  final String password;

  RegisterParams({required this.email, required this.password});
}