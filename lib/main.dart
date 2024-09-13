import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp() as Widget);
}

class MyApp {
  const MyApp();
}

class DefaultFirebaseOptions {
  // ignore: prefer_typing_uninitialized_variables
  static var currentPlatform;
}
