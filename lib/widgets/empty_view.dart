import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../gen/assets.gen.dart';

class EmptyView extends StatelessWidget {
  final void Function()? onRefreshPressed;
  final String? message;
  const EmptyView({super.key, this.onRefreshPressed, this.message});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            Assets.animations.noData,
            height: 250,
            width: 250,
          ),
          Text(
            message ?? 'No Data Available',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (onRefreshPressed != null)
            TextButton.icon(
              onPressed: onRefreshPressed,
              icon: const Icon(Icons.refresh),
              label: const Text(
                'Refresh',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
