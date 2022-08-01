import 'package:app/src/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    this.errorMessage,
    Key? key,
  }) : super(key: key);

  final String? errorMessage;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(
              Spacing.medium,
            ),
            child: Center(
              child: Text(errorMessage ?? 'An error has occurred.'),
            ),
          ),
        ),
      );
}
