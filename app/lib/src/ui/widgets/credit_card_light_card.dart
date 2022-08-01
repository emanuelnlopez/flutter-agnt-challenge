import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CreditCardLightCard extends StatelessWidget {
  const CreditCardLightCard({
    required this.creditCard,
    super.key,
  });

  final CreditCardLight creditCard;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Brand: ${creditCard.brand}'),
          Text('Card number: XXXX XXXX XXXX ${creditCard.last4}'),
          Text(
            'Expiration date: ${creditCard.expirationMonth}/${creditCard.expirationYear}',
          ),
        ],
      );
}
