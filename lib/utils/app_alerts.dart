import 'package:flutter/material.dart';

class AppAlerts {
  AppAlerts._();

  static void showErrorMessage(BuildContext context, [String? message]) {
    ScaffoldMessenger.of(context).showSnackBar(
      _buildSnackBar(
        message: message ?? "Something went wrong",
        backgroundColor: Colors.red,
      ),
    );
  }

  static void showInfoMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      _buildSnackBar(
        message: message,
        backgroundColor: Colors.blue,
      ),
    );
  }

  static void showSuccessMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      _buildSnackBar(
        message: message,
        backgroundColor: Colors.green,
      ),
    );
  }

  static SnackBar _buildSnackBar({
    required String message,
    required Color backgroundColor,
  }) {
    return SnackBar(
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
      width: 250,
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      duration: Duration(seconds: 1),
    );
  }
}
