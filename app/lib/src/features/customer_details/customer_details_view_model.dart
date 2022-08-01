import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CustomerDetailsViewModel extends ViewModel<CustomerDetailsViewState> {
  CustomerDetailsViewModel({
    required FetchCustomerCreditCardsUseCase fetchCustomerCreditCardsUseCase,
    required GlobalKey<NavigatorState> navigatorKey,
  })  : _fetchCustomerCreditCardsUseCase = fetchCustomerCreditCardsUseCase,
        _navigatorKey = navigatorKey,
        super(CustomerDetailsViewState.initial());

  final FetchCustomerCreditCardsUseCase _fetchCustomerCreditCardsUseCase;
  final GlobalKey<NavigatorState> _navigatorKey;

  void fetchCustomerCreditCards({required String customerId}) async {
    setState(
      CustomerDetailsViewState.loading(message: 'Fetching credit cards'),
    );

    final result = await _fetchCustomerCreditCardsUseCase.execute(
      arguments: {
        FetchCustomerCreditCardsUseCaseAttributesKeys.customerId: customerId,
      },
    );

    result.fold(
      (error) => setState(
        CustomerDetailsViewState.error(errorMessage: error.message),
      ),
      (cards) => setState(
        CustomerDetailsViewState.success(cards: cards),
      ),
    );
  }

  void navigateToCreditCardForm(Customer customer) async {
    var shouldRefresh = await _navigatorKey.currentState!.pushNamed(
      NamedRoute.creditCardForm,
      arguments: {
        'customer': customer,
      },
    );

    if (shouldRefresh == true) {
      fetchCustomerCreditCards(customerId: customer.id!);
    }
  }
}
