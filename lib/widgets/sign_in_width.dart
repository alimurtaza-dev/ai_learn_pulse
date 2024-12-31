import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class SignInWithDivider extends StatelessWidget {
  const SignInWithDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.grey.shade300],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Sign in with",
            style: AppTextStyle.appMediumTextStyle(
              size: 16,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey.shade300, Colors.white],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
