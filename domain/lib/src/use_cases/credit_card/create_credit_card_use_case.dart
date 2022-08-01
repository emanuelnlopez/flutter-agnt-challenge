import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

class CreateCreditCardUseCase extends UseCase<bool> {
  CreateCreditCardUseCase({
    required CreditCardRepository creditCardRepository,
  }) : _creditCardRepository = creditCardRepository;

  final CreditCardRepository _creditCardRepository;

  @override
  Future<Either<Failure, bool>> execute(
      {required Map<String, dynamic> arguments}) async {
    try {
      await _creditCardRepository.createCreditCard(
        creditCard: arguments[CreateCreditCardUseCaseAttributesKeys.creditCard],
        customerId: arguments[CreateCreditCardUseCaseAttributesKeys.customerId],
      );

      return Right(true);
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

abstract class CreateCreditCardUseCaseAttributesKeys {
  static const creditCard = 'creditCard';
  static const customerId = 'customerId';
}
