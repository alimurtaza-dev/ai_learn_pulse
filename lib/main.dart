import 'package:flutter/material.dart';

import 'screens/login_screen/view/login_screen.dart';

void main() {
  runApp(
    const AiLearnPulse(),
  );
}

class AiLearnPulse extends StatelessWidget {
  const AiLearnPulse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const LoginScreen(),
    );
  }
}
