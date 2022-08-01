import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:domain/domain.dart';

class CreditCardFormViewModel extends ViewModel<CreditCardFormViewState> {
  CreditCardFormViewModel(
      {required CreateCreditCardUseCase createCreditCardUseCase})
      : _createCreditCardUseCase = createCreditCardUseCase,
        super(CreditCardFormViewState.initial());

  final CreateCreditCardUseCase _createCreditCardUseCase;

  void createCreditCard({
    required CreditCard creditCard,
    required String customerId,
  }) async {
    setState(
      CreditCardFormViewState.loading(message: 'Creating credit card'),
    );

    final result = await _createCreditCardUseCase.execute(
      arguments: {
        CreateCreditCardUseCaseAttributesKeys.creditCard: creditCard,
        CreateCreditCardUseCaseAttributesKeys.customerId: customerId,
      },
    );

    result.fold(
      (error) => setState(
        CreditCardFormViewState.error(errorMessage: error.message),
      ),
      (success) => setState(
        CreditCardFormViewState.success(),
      ),
    );
  }
}
