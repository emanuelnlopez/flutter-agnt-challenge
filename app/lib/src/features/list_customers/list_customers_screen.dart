import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:app/src/ui/theme/theme.dart';
import 'package:app/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class ListCustomersScreen extends StatefulWidget {
  const ListCustomersScreen({Key? key}) : super(key: key);

  @override
  State<ListCustomersScreen> createState() => _ListCustomersScreenState();
}

class _ListCustomersScreenState extends State<ListCustomersScreen> {
  late ListCustomersViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = context.read<Injector>().listCustomersViewModel;

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _viewModel.fetchCustomers(),
    );
  }

  Widget _buildBody(
    BuildContext context, {
    required ListCustomersViewState state,
  }) {
    Widget result;
    if (state is ListCustomersViewStateSuccess) {
      if (state.customers.isNotEmpty == true) {
        result = ListView.separated(
          itemBuilder: (context, index) => CustomerCard(
            customer: state.customers[index],
            onSelected: (customer) => _viewModel.navigateToCustomerDetails(
              customer,
            ),
          ),
          itemCount: state.customers.length,
          separatorBuilder: (_, __) => const SizedBox(
            height: Spacing.xsmall,
          ),
        );
      } else {
        result = Center(
          child: Padding(
            padding: const EdgeInsets.all(
              Spacing.medium,
            ),
            child: Center(
              child: Text('No customers found'),
            ),
          ),
        );
      }
    } else if (state is ListCustomersViewStateLoading) {
      result = LoadingScreen(
        message: state.message,
      );
    } else {
      result = ErrorScreen();
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client list'),
      ),
      body: ChangeNotifierProvider<ListCustomersViewModel>(
        create: (_) => _viewModel,
        child: Consumer<ListCustomersViewModel>(
          builder: (_, viewModel, __) => _buildBody(
            context,
            state: viewModel.state,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: Spacing.small,
        onPressed: () => _viewModel.navigateToCustomerForm(),
        child: Icon(Icons.add),
      ),
    );
  }
}
