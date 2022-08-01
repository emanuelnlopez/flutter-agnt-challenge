import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'list_customers_use_case_test.mocks.dart';

@GenerateMocks([CustomerRepository])
void main() {
  late List<Customer> customers;
  late ListCustomersUseCase useCase;
  late MockCustomerRepository repository;

  setUp(() {
    repository = MockCustomerRepository();
    useCase = ListCustomersUseCase(customerRepository: repository);

    customers = [
      Customer(
        email: 'john@doe.com',
        name: 'John Doe',
        phone: '123456789',
        id: '1',
      ),
      Customer(
        email: 'jane@doe.com',
        name: 'Jame Doe',
        phone: '456789123',
        id: '2',
      ),
      Customer(
        email: 'steph@rohit.com',
        name: 'Steph Rohit',
        phone: '789123456',
        id: '3',
      ),
    ];
  });

  test('Should return a list of 3 customers', () async {
    // Arrange
    when(repository.listCustomers()).thenAnswer(
      (_) async => customers,
    );

    // Act
    final result = await useCase.execute(arguments: {});

    // Assert
    expect(result, Right(customers));
  });
}
