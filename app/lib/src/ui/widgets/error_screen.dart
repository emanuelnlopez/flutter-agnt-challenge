import 'package:app/src/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    this.buttonText,
    this.errorMessage,
    Key? key,
    this.onTap,
  }) : super(key: key);

  final String? buttonText;
  final String? errorMessage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(
              Spacing.medium,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(errorMessage ?? 'An error has occurred.'),
                  if (onTap != null)
                    ElevatedButton(
                      onPressed: onTap,
                      child: Text(buttonText ?? 'Go back'),
                    ),
                ],
              ),
            ),
          ),
        ),
      );
}
