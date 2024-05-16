// lib/app/app.dart
import 'package:flutter/material.dart';
import 'package:vendorvault/screen/registration_screen.dart';
import '../screen/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RegisterScreen(),
    );
  }
}
