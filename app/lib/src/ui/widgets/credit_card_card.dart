import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CreditCardCard extends StatelessWidget {
  const CreditCardCard({
    required this.creditCard,
    super.key,
  });

  final CreditCard creditCard;

  @override
  Widget build(BuildContext context) => ListTile(
        subtitle: Text(
          'Expiration date: ${creditCard.expirationMonth}/${creditCard.expirationYear}',
        ),
        title: Text('Last 4 numbers: ${creditCard.number}'),
      );
}
