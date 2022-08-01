import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

class ListCustomersUseCase extends UseCase<List<Customer>> {
  ListCustomersUseCase({
    required CustomerRepository customerRepository,
  }) : _customerRepository = customerRepository;

  final CustomerRepository _customerRepository;

  @override
  Future<Either<Failure, List<Customer>>> execute({
    required Map<String, dynamic> arguments,
  }) async {
    try {
      final result = await _customerRepository.listCustomers();

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
