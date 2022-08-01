import 'package:flutter/material.dart';

class DefaultDialog {
  factory DefaultDialog() => _instance;

  DefaultDialog.internal();

  static final DefaultDialog _instance = DefaultDialog.internal();

  static void showCustomDialog(
    BuildContext context, {
    List<Widget>? actions,
    required String title,
    required Widget body,
  }) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          actions: actions,
          actionsAlignment: MainAxisAlignment.center,
          content: body,
          title: Text(title),
        );
      },
    );
  }
}
