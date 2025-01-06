import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

String removeHtmlTags(String html) {
  final RegExp exp = RegExp("<[^>]*>", multiLine: true);
  return html.replaceAll(exp, '').trimLeft();
}

void copyTextToClipboard(
  BuildContext context, {
  required String text,
  String? copyMessage,
}) async {
  try {
    await Clipboard.setData(ClipboardData(text: text));
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            copyMessage ?? "Copied to Clipboard Successfully",
          ),
        ),
      );
    }
  } catch (error) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Copy failed: $error')),
      );
    }
  }
}

Future<bool> isInternetAvailable() async {
  try {
    final result = await InternetAddress.lookup('example.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  }
}

String capitalizeFirstWord(String input) {
  return input.isNotEmpty ? input[0].toUpperCase() + input.substring(1) : input;
}

String getNameForAppDropDown(dynamic value) {
  if (value is Enum) {
    return capitalizeFirstWord(value.toString().split('.').last);
  }

  try {
    return value.name;
  } catch (e) {
    return value.toString();
  }
}

Future<String> launchWhatsApp(String phoneNumber, String message) async {
  final Uri whatsappUri = Uri(
    scheme: 'https',
    host: 'wa.me',
    path: phoneNumber,
    queryParameters: {'text': message},
  );

  // Check if WhatsApp is installed
  if (await canLaunchUrl(whatsappUri)) {
    await launchUrl(whatsappUri);
    return 'WhatsApp launched successfully';
  } else {
    // Open Play Store for WhatsApp if not installed
    final Uri playStoreUri =
        Uri.parse('https://play.google.com/store/apps/details?id=com.whatsapp');
    if (await canLaunchUrl(playStoreUri)) {
      await launchUrl(playStoreUri);
    }
    return 'Could not launch WhatsApp. Please make sure WhatsApp is installed.';
  }
}

String removeSpacesFromPhoneNumber(String phoneNumber) {
  return phoneNumber.replaceAll(' ', '');
}

String formatPhoneNumber(String phoneNumber) {
  if (phoneNumber.length < 7) {
    // Not enough digits to format
    return phoneNumber;
  }

  String firstFour = phoneNumber.substring(0, 4);
  String lastThree = phoneNumber.substring(phoneNumber.length - 3);
  String stars = '*' *
      (phoneNumber.length -
          7); // Number of stars between firstFour and lastThree

  return '$firstFour$stars$lastThree';
}

void showUnableToPostDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Unable to Post"),
        content: const Text(
            "You are unable to post until one minute. Please try again after 24 Hours"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              "OK",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      );
    },
  );
}

Future<DateTime?> selectDate(
    BuildContext context, DateTime? selectedDate) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1947),
      lastDate: DateTime.now());
  if (picked != null && picked != selectedDate) {
    return picked;
  }
  return null;
}
