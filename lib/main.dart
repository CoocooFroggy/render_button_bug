import 'package:flutter/material.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';

final googleSignInPlugin =
(GoogleSignInPlatform.instance as GoogleSignInPlugin);

Future<void> main() async {
  await googleSignInPlugin.initWithParams(
      const SignInInitParameters(
          clientId:
          'googleClientId'));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: googleSignInPlugin.renderButton(
              configuration: GSIButtonConfiguration(minimumWidth: 400)),
        ),
      ),
    );
  }
}
