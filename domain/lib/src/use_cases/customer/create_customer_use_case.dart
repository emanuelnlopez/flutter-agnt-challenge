import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

class CreateCustomerUseCase extends UseCase<bool> {
  CreateCustomerUseCase({
    required CustomerRepository customerRepository,
  }) : _customerRepository = customerRepository;

  final CustomerRepository _customerRepository;

  @override
  Future<Either<Failure, bool>> execute({
    required Map<String, dynamic> arguments,
  }) async {
    try {
      await _customerRepository.createCustomer(
        arguments[CreateCustomerUseCaseAttributesKeys.customer],
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

abstract class CreateCustomerUseCaseAttributesKeys {
  static const customer = 'customer';
}
