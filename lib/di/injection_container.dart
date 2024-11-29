import 'package:get_it/get_it.dart';
import 'package:isj2_android_flutter/features/data/datasources/firebase_auth_service.dart';
import 'package:isj2_android_flutter/features/data/repositories/auth_repository_impl.dart';
import 'package:isj2_android_flutter/features/domain/repositories/auth_repository.dart';
import 'package:isj2_android_flutter/features/domain/usecases/login_user.dart';
import 'package:isj2_android_flutter/features/domain/usecases/register_user.dart';

final sl = GetIt.instance;

void setupDependencyInjection() {
  // Data Layer
  sl.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());

  // Repository Layer
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  // Use Cases
  sl.registerLazySingleton<LoginUser>(() => LoginUser(sl()));
  sl.registerLazySingleton<RegisterUser>(() => RegisterUser(sl()));
}
