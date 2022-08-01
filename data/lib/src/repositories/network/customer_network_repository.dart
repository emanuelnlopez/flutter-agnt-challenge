import 'dart:convert';
import 'dart:io';

import 'package:data/data.dart';
import 'package:domain/domain.dart';

class CustomerNetworkRepository implements CustomerRepository {
  CustomerNetworkRepository({
    required Endpoints endpoints,
    required NetworkClient networkClient,
  })  : _endpoints = endpoints,
        _networkClient = networkClient;

  final Endpoints _endpoints;
  final NetworkClient _networkClient;

  @override
  Future<void> createCustomer(Customer customer) async {
    final response = await _networkClient.post(
      CreateCustomerRequest(
        customer: customer,
        url: _endpoints.customersUrl,
      ),
    );

    if (response.statusCode != HttpStatus.ok) {
      throw Exception();
    }
  }

  @override
  Future<List<Customer>> listCustomers() async {
    final response = await _networkClient.get(
      ListCustomersRequest(
        url: _endpoints.customersUrl,
      ),
    );

    if (response.statusCode != HttpStatus.ok) {
      throw Exception();
    }

    final body = json.decode(
      utf8.decode(response.bodyBytes),
    );

    return NetworkCustomer.fromDynamicList(body['data']);
  }
}
