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
    apiKey: 'AIzaSyCfv1osuTskhWwbaVpf7vVsNbuPM9Uwyl4',
    appId: '1:794595426735:web:4e18d0a0829a8dabbcaf5a',
    messagingSenderId: '794595426735',
    projectId: 'tugas14flutter-sanbercode',
    authDomain: 'tugas14flutter-sanbercode.firebaseapp.com',
    storageBucket: 'tugas14flutter-sanbercode.appspot.com',
    measurementId: 'G-NM18NZP6WM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEOZN64HCk_upfBgL6G2v_mkzsd2ik1iM',
    appId: '1:794595426735:android:7ef159f376206c9abcaf5a',
    messagingSenderId: '794595426735',
    projectId: 'tugas14flutter-sanbercode',
    storageBucket: 'tugas14flutter-sanbercode.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQtxyuGvshk2eVzcoffhfI8r6GOYGgy_s',
    appId: '1:794595426735:ios:5cfc236331b73ac4bcaf5a',
    messagingSenderId: '794595426735',
    projectId: 'tugas14flutter-sanbercode',
    storageBucket: 'tugas14flutter-sanbercode.appspot.com',
    iosBundleId: 'com.example.tugas14',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQtxyuGvshk2eVzcoffhfI8r6GOYGgy_s',
    appId: '1:794595426735:ios:5cfc236331b73ac4bcaf5a',
    messagingSenderId: '794595426735',
    projectId: 'tugas14flutter-sanbercode',
    storageBucket: 'tugas14flutter-sanbercode.appspot.com',
    iosBundleId: 'com.example.tugas14',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCfv1osuTskhWwbaVpf7vVsNbuPM9Uwyl4',
    appId: '1:794595426735:web:f514f99273090543bcaf5a',
    messagingSenderId: '794595426735',
    projectId: 'tugas14flutter-sanbercode',
    authDomain: 'tugas14flutter-sanbercode.firebaseapp.com',
    storageBucket: 'tugas14flutter-sanbercode.appspot.com',
    measurementId: 'G-5FBGZMG30K',
  );

}