import 'package:ai_learn_pulse/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key,  this.color});
final Color? color;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color:color?? ColorName.primaryColor,
    );
  }
}
