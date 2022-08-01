import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:app/src/ui/theme/theme.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerDetailsScreen extends StatefulWidget {
  const CustomerDetailsScreen({
    required this.customer,
    Key? key,
  }) : super(key: key);

  final Customer customer;

  @override
  State<CustomerDetailsScreen> createState() => _CustomerDetailsScreenState();
}

class _CustomerDetailsScreenState extends State<CustomerDetailsScreen> {
  late CustomerDetailsViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _viewModel = context.read<Injector>().customerDetailsViewModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          Spacing.medium,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name:'),
            const SizedBox(
              height: Spacing.xsmall,
            ),
            Row(
              children: [
                const SizedBox(
                  width: Spacing.small,
                ),
                Text(widget.customer.name),
              ],
            ),
            const SizedBox(
              height: Spacing.medium,
            ),
            Text('Email:'),
            const SizedBox(
              height: Spacing.xsmall,
            ),
            Row(
              children: [
                const SizedBox(
                  width: Spacing.small,
                ),
                Text(widget.customer.email),
              ],
            ),
            const SizedBox(
              height: Spacing.medium,
            ),
            Text('Phone:'),
            const SizedBox(
              height: Spacing.xsmall,
            ),
            Row(
              children: [
                const SizedBox(
                  width: Spacing.small,
                ),
                Text(widget.customer.phone),
              ],
            ),
            const SizedBox(
              height: Spacing.medium,
            ),
            Text('Credit cards:'),
            const SizedBox(height: Spacing.medium),
            ElevatedButton(
              onPressed: () => _viewModel.navigateToCreditCardForm(
                widget.customer,
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                  double.infinity,
                  Spacing.large * 2,
                ),
              ),
              child: Text('Assign credit card'),
            ),
          ],
        ),
      ),
    );
  }
}
