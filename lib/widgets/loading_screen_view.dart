import 'package:flutter/material.dart';

import 'loading_animation.dart';

class LoadingScreenView extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const LoadingScreenView({
    super.key,
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: Colors.black54,
            alignment: Alignment.center,
            child: Center(
              child: Container(
                height: 80,
                width: 80,
                // decoration: BoxDecoration(
                //   color: Theme.of(context).scaffoldBackgroundColor,
                //   borderRadius: BorderRadius.circular(10.0),
                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.black.withOpacity(0.05),
                //       offset: const Offset(0.0, 20.0),
                //       blurRadius: 20.0,
                //     ),
                //   ],
                // ),
                padding: const EdgeInsets.all(4),
                alignment: Alignment.center,
                child: const LoadingAnimation(),
              ),
            ),
          ),
      ],
    );
  }
}
