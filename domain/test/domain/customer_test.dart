import 'package:domain/domain.dart';
import 'package:test/test.dart';

void main() {
  test('Should be able to access all customer data', () {
    final customer = Customer(
      description: 'Example customer',
      email: 'john@doe.com',
      id: 'abcd1',
      name: 'John Doe',
      phone: '+1 456 789654',
    );

    expect(customer.description, 'Example customer');
    expect(customer.email, 'john@doe.com');
    expect(customer.id, 'abcd1');
    expect(customer.name, 'John Doe');
    expect(customer.phone, '+1 456 789654');
  });
}
