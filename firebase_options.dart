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
    // ignore: missing_enum_constant_in_switch
    if (defaultTargetPlatform case TargetPlatform.android) {
      return android;
    } else if (defaultTargetPlatform case TargetPlatform.iOS) {
      return ios;
    } else if (defaultTargetPlatform case TargetPlatform.macOS) {
      return macos;
    } else if (defaultTargetPlatform
        case TargetPlatform.fuchsia ||
            TargetPlatform.linux ||
            TargetPlatform.windows) {}

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyA_lMTRUnpyKKkYg2md2_brWAFmjpiz7nA",
      authDomain: "soc-ment-app.firebaseapp.com",
      projectId: "soc-ment-app",
      storageBucket: "soc-ment-app.appspot.com",
      messagingSenderId: "723855631556",
      appId: "1:723855631556:web:452106e302cdd27811d591",
      measurementId: "G-86E4T5NT70");
  // Initialize Firebase

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_lMTRUnpyKKkYg2md2_brWAFmjpiz7nA',
    appId: '1:723855631556:android:55a169d502b7330d11d591',
    messagingSenderId: '723855631556',
    projectId: 'soc-ment-app',
    storageBucket: 'soc-ment-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_lMTRUnpyKKkYg2md2_brWAFmjpiz7nA',
    appId: '1:723855631556:ios:f47371c5a76f6fb911d591',
    messagingSenderId: '723855631556',
    projectId: 'soc-ment-app',
    storageBucket: 'soc-ment-app.appspot.com',
    iosClientId:
        '723855631556-m77qd9hcnftdo2a2fc3787erqmcj7m99.apps.googleusercontent.com',
    iosBundleId: 'com.example.complete',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_lMTRUnpyKKkYg2md2_brWAFmjpiz7nA',
    appId: '1:723855631556:ios:d9e01cfe8b675dfcb237ad',
    messagingSenderId: '723855631556',
    projectId: 'soc-ment-app',
    storageBucket: 'soc-ment-app.appspot.com',
    iosClientId:
        '723855631556-m77qd9hcnftdo2a2fc3787erqmcj7m99.apps.googleusercontent.com',
    iosBundleId: 'com.example.complete',
  );
}
