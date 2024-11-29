// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBXSnvsT6j0BVjfmeKM5aS2Ihi6TjIbwC4',
    appId: '1:670898632813:web:da0d4e2a800628add5e764',
    messagingSenderId: '670898632813',
    projectId: 'isj2-android',
    authDomain: 'isj2-android.firebaseapp.com',
    storageBucket: 'isj2-android.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANRMOPhIU_g1QFygoEHkV82jssJwDUnvU',
    appId: '1:670898632813:android:63ab39741525d4f8d5e764',
    messagingSenderId: '670898632813',
    projectId: 'isj2-android',
    storageBucket: 'isj2-android.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpzcOPyxldRwGOeKKYpozOj0Ho6CDfdRQ',
    appId: '1:670898632813:ios:c95d256a023cad73d5e764',
    messagingSenderId: '670898632813',
    projectId: 'isj2-android',
    storageBucket: 'isj2-android.firebasestorage.app',
    iosBundleId: 'com.example.isj2AndroidFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDpzcOPyxldRwGOeKKYpozOj0Ho6CDfdRQ',
    appId: '1:670898632813:ios:c95d256a023cad73d5e764',
    messagingSenderId: '670898632813',
    projectId: 'isj2-android',
    storageBucket: 'isj2-android.firebasestorage.app',
    iosBundleId: 'com.example.isj2AndroidFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBXSnvsT6j0BVjfmeKM5aS2Ihi6TjIbwC4',
    appId: '1:670898632813:web:753d1e2631e0d49cd5e764',
    messagingSenderId: '670898632813',
    projectId: 'isj2-android',
    authDomain: 'isj2-android.firebaseapp.com',
    storageBucket: 'isj2-android.firebasestorage.app',
  );
}