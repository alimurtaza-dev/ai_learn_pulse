import 'package:ai_learn_pulse/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../services/splash/splash_service.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashServices splashServices = SplashServices();
  @override
  void initState() {
    super.initState();
    splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(
              Assets.appIcons.lmsLogo.path,
            )),
      ),
    );
  }
}
