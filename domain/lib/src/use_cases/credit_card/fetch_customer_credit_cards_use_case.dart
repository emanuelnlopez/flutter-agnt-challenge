import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

class FetchCustomerCreditCardsUseCase extends UseCase<List<CreditCardLight>> {
  FetchCustomerCreditCardsUseCase({
    required CreditCardRepository creditCardRepository,
  }) : _creditCardRepository = creditCardRepository;

  final CreditCardRepository _creditCardRepository;

  @override
  Future<Either<Failure, List<CreditCardLight>>> execute(
      {required Map<String, dynamic> arguments}) async {
    try {
      final result = await _creditCardRepository.fetchCustomerCreditCards(
        customerId:
            arguments[FetchCustomerCreditCardsUseCaseAttributesKeys.customerId],
      );

      return Right(result);
    } on ServerException catch (se) {
      return Left(Failure(
        code: se.code,
        message: se.message,
      ));
    } on Exception catch (_) {
      return Left(
        Failure(message: 'Unknown Error'),
      );
    }
  }
}

abstract class FetchCustomerCreditCardsUseCaseAttributesKeys {
  static const customerId = 'customerId';
}
