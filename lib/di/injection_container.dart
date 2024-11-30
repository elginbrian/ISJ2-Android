import 'package:get_it/get_it.dart';
import 'package:isj2_android_flutter/features/data/datasources/firebase_auth_service.dart';
import 'package:isj2_android_flutter/features/data/datasources/notes_firestore_service.dart';
import 'package:isj2_android_flutter/features/data/repositories/auth_repository_impl.dart';
import 'package:isj2_android_flutter/features/data/repositories/note_repository_impl.dart';
import 'package:isj2_android_flutter/features/domain/repositories/auth_repository.dart';
import 'package:isj2_android_flutter/features/domain/repositories/note_repository.dart';
import 'package:isj2_android_flutter/features/domain/usecases/login_user.dart';
import 'package:isj2_android_flutter/features/domain/usecases/register_user.dart';
import 'package:isj2_android_flutter/features/domain/usecases/add_note.dart';
import 'package:isj2_android_flutter/features/domain/usecases/get_notes.dart';
import 'package:isj2_android_flutter/features/domain/usecases/update_note.dart';
import 'package:isj2_android_flutter/features/domain/usecases/delete_note.dart';
import 'package:isj2_android_flutter/features/presentation/provider/auth_provider.dart';
import 'package:isj2_android_flutter/features/presentation/provider/note_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final sl = GetIt.instance;

void setupDependencyInjection() {
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);

  // Data Layer
  sl.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
  sl.registerLazySingleton<NotesFirestoreService>(() => NotesFirestoreService());

  // Repository Layer
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));
  sl.registerLazySingleton<NotesRepository>(() => NotesRepositoryImpl(sl()));

  // Use Cases
  sl.registerLazySingleton<LoginUser>(() => LoginUser(sl()));
  sl.registerLazySingleton<RegisterUser>(() => RegisterUser(sl()));
  sl.registerLazySingleton<AddNote>(() => AddNote(sl()));
  sl.registerLazySingleton<GetNotes>(() => GetNotes(sl()));
  sl.registerLazySingleton<UpdateNote>(() => UpdateNote(sl()));
  sl.registerLazySingleton<DeleteNote>(() => DeleteNote(sl()));

  // Providers
  sl.registerLazySingleton<AuthProvider>(() => AuthProvider(
    loginUser: sl(),
    registerUser: sl(),
  ));
  sl.registerLazySingleton<NotesProvider>(() => NotesProvider(
    addNote: sl(),
    getNotes: sl(),
    updateNote: sl(),
    deleteNote: sl(),
  ));
}
