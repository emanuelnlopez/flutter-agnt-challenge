import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:domain/domain.dart';

class CustomerFormViewModel extends ViewModel<CustomerFormViewState> {
  CustomerFormViewModel({
    required CreateCustomerUseCase createCustomerUseCase,
  })  : _createCustomerUseCase = createCustomerUseCase,
        super(CustomerFormViewState.initial());

  final CreateCustomerUseCase _createCustomerUseCase;

  void createCustomer(Customer customer) async {
    setState(
      CustomerFormViewState.loading(message: 'Creating customer…'),
    );

    final result = await _createCustomerUseCase.execute(arguments: {
      CreateCustomerUseCaseAttributesKeys.customer: customer,
    });

    result.fold(
      (error) => setState(
        CustomerFormViewState.error(errorMessage: error.message),
      ),
      (success) => setState(
        CustomerFormViewState.success(),
      ),
    );
  }
}
