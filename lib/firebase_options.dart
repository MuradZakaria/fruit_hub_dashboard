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
    apiKey: 'AIzaSyCNVVeshRcwF9rIYSq5jhJuSewD3nXQ1sQ',
    appId: '1:889642624656:web:081bdaf8a893ad60865a15',
    messagingSenderId: '889642624656',
    projectId: 'fruit-hub-92571',
    authDomain: 'fruit-hub-92571.firebaseapp.com',
    storageBucket: 'fruit-hub-92571.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSGG59RjAxV_yWVifd7LWUK3hKbM2rMOY',
    appId: '1:889642624656:android:ced05e15878f5c2f865a15',
    messagingSenderId: '889642624656',
    projectId: 'fruit-hub-92571',
    storageBucket: 'fruit-hub-92571.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCiu1RMhQdL8Oky39nXjeXAdwXAYU6j2uQ',
    appId: '1:889642624656:ios:a13631bce373384b865a15',
    messagingSenderId: '889642624656',
    projectId: 'fruit-hub-92571',
    storageBucket: 'fruit-hub-92571.firebasestorage.app',
    iosClientId: '889642624656-ml2e5451stgoskgggh4h5qplv7vo44kp.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitHubDashboard',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCiu1RMhQdL8Oky39nXjeXAdwXAYU6j2uQ',
    appId: '1:889642624656:ios:a13631bce373384b865a15',
    messagingSenderId: '889642624656',
    projectId: 'fruit-hub-92571',
    storageBucket: 'fruit-hub-92571.firebasestorage.app',
    iosClientId: '889642624656-ml2e5451stgoskgggh4h5qplv7vo44kp.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitHubDashboard',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKWynzh0NRgBhZrwOnUYMRDEnHKmxA_ys',
    appId: '1:889642624656:web:355815c6d8982f96865a15',
    messagingSenderId: '889642624656',
    projectId: 'fruit-hub-92571',
    authDomain: 'fruit-hub-92571.firebaseapp.com',
    storageBucket: 'fruit-hub-92571.firebasestorage.app',
  );
}
