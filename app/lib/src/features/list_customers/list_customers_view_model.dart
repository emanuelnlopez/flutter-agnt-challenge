import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class ListCustomersViewModel extends ViewModel<ListCustomersViewState> {
  ListCustomersViewModel({
    required ListCustomersUseCase listCustomersUseCase,
    required GlobalKey<NavigatorState> navigatorKey,
  })  : _listCustomersUseCase = listCustomersUseCase,
        _navigatorKey = navigatorKey,
        super(ListCustomersViewState.initial());

  final ListCustomersUseCase _listCustomersUseCase;
  final GlobalKey<NavigatorState> _navigatorKey;

  void fetchCustomers() async {
    setState(
      ListCustomersViewState.loading(message: 'Fetching customers…'),
    );

    final result = await _listCustomersUseCase.execute(arguments: {});

    result.fold(
      (error) => setState(
        ListCustomersViewState.error(errorMessage: error.message),
      ),
      (customers) => setState(
        ListCustomersViewState.success(customers: customers),
      ),
    );
  }

  void navigateToCustomerForm() async {
    var shouldRefreshList = await _navigatorKey.currentState!.pushNamed(
      NamedRoute.customerForm,
    );

    if (shouldRefreshList == true) {
      fetchCustomers();
    }
  }

  void navigateToCustomerDetails(Customer customer) {
    _navigatorKey.currentState!.pushNamed(
      NamedRoute.customerDetails,
      arguments: {
        'customer': customer,
      },
    );
  }
}
