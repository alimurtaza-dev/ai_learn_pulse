import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void hideKeyBoard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

String getFormattedDate(DateTime date) => DateFormat('dd/MM/yyyy').format(date);
