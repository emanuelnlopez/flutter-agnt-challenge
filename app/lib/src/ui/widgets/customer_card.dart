import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({
    required this.customer,
    super.key,
    required this.onSelected,
  });

  final Customer customer;
  final Function(Customer customer) onSelected;

  @override
  Widget build(BuildContext context) => ListTile(
        subtitle: Text(customer.email),
        title: Text(customer.name),
        onTap: () => onSelected(customer),
      );
}
