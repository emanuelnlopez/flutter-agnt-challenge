import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:app/src/ui/theme/theme.dart';
import 'package:app/src/ui/widgets/widgets.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _viewModel.fetchCustomerCreditCards(
        customerId: widget.customer.id!,
      ),
    );
  }

  Widget _buildCreditCards(
    BuildContext context, {
    required CustomerDetailsViewState state,
  }) {
    Widget result;

    if (state is CustomerDetailsViewStateLoading) {
      result = Expanded(
        child: Center(
          child: Column(
            children: [
              CircularProgressIndicator(),
              if (state.message?.isNotEmpty == true)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Spacing.small,
                  ),
                  child: Text(state.message!),
                ),
            ],
          ),
        ),
      );
    } else if (state is CustomerDetailsViewStateSuccess) {
      result = state.cards.isEmpty
          ? Expanded(
              child: Text('The customer has no credit cards assigned'),
            )
          : Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: Spacing.medium,
                ),
                child: ListView.separated(
                  itemBuilder: (context, index) => CreditCardLightCard(
                    creditCard: state.cards[index],
                  ),
                  itemCount: state.cards.length,
                  separatorBuilder: (_, __) => const SizedBox(
                    height: Spacing.xsmall,
                  ),
                ),
              ),
            );
    } else {
      result = const SizedBox();
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.medium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
            ChangeNotifierProvider<CustomerDetailsViewModel>(
              create: (_) => _viewModel,
              child: Consumer<CustomerDetailsViewModel>(
                builder: (_, viewModel, __) => _buildCreditCards(
                  context,
                  state: viewModel.state,
                ),
              ),
            ),
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
