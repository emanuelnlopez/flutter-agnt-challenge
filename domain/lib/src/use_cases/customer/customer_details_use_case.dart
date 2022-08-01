import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

class CustomerDetailsUseCase extends UseCase<Customer> {
  CustomerDetailsUseCase({
    required CustomerRepository customerRepository,
  }) : _customerRepository = customerRepository;

  final CustomerRepository _customerRepository;

  @override
  Future<Either<Failure, Customer>> execute({
    required Map<String, dynamic> arguments,
  }) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}
