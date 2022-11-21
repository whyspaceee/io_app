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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDzwxCVZkwtJCgDf2wNI1GTa5nlJe_FZOM',
    appId: '1:418969290926:web:f6f5231bdd1a945b41c53f',
    messagingSenderId: '418969290926',
    projectId: 'io-survivalguide',
    authDomain: 'io-survivalguide.firebaseapp.com',
    storageBucket: 'io-survivalguide.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBB0t0MDk-FpcBtzr_SSsWPQDcYEpN9Qws',
    appId: '1:418969290926:android:ca98b233fd66815441c53f',
    messagingSenderId: '418969290926',
    projectId: 'io-survivalguide',
    storageBucket: 'io-survivalguide.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCRHMqnWjw_R6W__ShRYThhHCuShW5F5sg',
    appId: '1:418969290926:ios:be072433f4907d0a41c53f',
    messagingSenderId: '418969290926',
    projectId: 'io-survivalguide',
    storageBucket: 'io-survivalguide.appspot.com',
    iosClientId: '418969290926-3j12tgimuj40acp77o2agr6jn9ekb59m.apps.googleusercontent.com',
    iosBundleId: 'com.example.appIo',
  );
}