import 'package:ai_learn_pulse/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: ColorName.white,
    );
  }
}
