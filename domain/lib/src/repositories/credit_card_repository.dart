import 'package:domain/domain.dart';

abstract class CreditCardRepository {
  Future<void> createCreditCard({
    required CreditCard creditCard,
    required String customerId,
  });

  Future<List<CreditCardLight>> fetchCustomerCreditCards({
    required String customerId,
  });
}
