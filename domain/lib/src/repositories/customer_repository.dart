import 'package:domain/domain.dart';

abstract class CustomerRepository {
  Future<void> createCustomer(Customer customer);

  Future<List<Customer>> listCustomers();

  Future<Customer> customerDetails(String customerId);
}
