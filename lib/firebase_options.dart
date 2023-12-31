// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDpgQ5QE5vmCu2Ud7kW86lIIKiSo83W-GI',
    appId: '1:442125853338:web:aeb87f4fc3bb9b006c7523',
    messagingSenderId: '442125853338',
    projectId: 'bookly-hotels-708ec',
    authDomain: 'bookly-hotels-708ec.firebaseapp.com',
    storageBucket: 'bookly-hotels-708ec.appspot.com',
    measurementId: 'G-9188JL05DN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMCLJy3u3D4Nlb2uhFzUIUw2XTYyhdBkM',
    appId: '1:442125853338:android:7b4c079660d7c7a76c7523',
    messagingSenderId: '442125853338',
    projectId: 'bookly-hotels-708ec',
    storageBucket: 'bookly-hotels-708ec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAARhRYdXb_gIZIEg5UzjlBLWdVV3IeTRQ',
    appId: '1:442125853338:ios:4236e46f73f2e99e6c7523',
    messagingSenderId: '442125853338',
    projectId: 'bookly-hotels-708ec',
    storageBucket: 'bookly-hotels-708ec.appspot.com',
    iosBundleId: 'com.example.bookingHotels',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAARhRYdXb_gIZIEg5UzjlBLWdVV3IeTRQ',
    appId: '1:442125853338:ios:631d94ff0b856f816c7523',
    messagingSenderId: '442125853338',
    projectId: 'bookly-hotels-708ec',
    storageBucket: 'bookly-hotels-708ec.appspot.com',
    iosBundleId: 'com.example.bookingHotels.RunnerTests',
  );
}
