import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CustomerDetailsViewModel extends ViewModel<CustomerDetailsViewState> {
  CustomerDetailsViewModel({
    required GlobalKey<NavigatorState> navigatorKey,
  })  : _navigatorKey = navigatorKey,
        super(CustomerDetailsViewState.initial());

  final GlobalKey<NavigatorState> _navigatorKey;

  void navigateToCreditCardForm(Customer customer) async {
    var shouldRefresh = await _navigatorKey.currentState!.pushNamed(
      NamedRoute.creditCardForm,
      arguments: {
        'customer': customer,
      },
    );
  }
}
