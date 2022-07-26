import 'dart:convert';
import 'dart:io';

import 'package:data/data.dart';
import 'package:domain/domain.dart';

class CreditCardNetworkRepository implements CreditCardRepository {
  CreditCardNetworkRepository({
    required Endpoints endpoints,
    required NetworkClient networkClient,
  })  : _endpoints = endpoints,
        _networkClient = networkClient;

  final Endpoints _endpoints;
  final NetworkClient _networkClient;

  @override
  Future<void> createCreditCard({
    required CreditCard creditCard,
    required String customerId,
  }) async {
    final response = await _networkClient.post(
      CreateCreditCardRequest(
        creditCard: creditCard,
        customerId: customerId,
        url: _endpoints.creditCardsUrl,
      ),
    );

    if (response.statusCode != HttpStatus.ok) {
      throw Exception();
    }
  }

  @override
  Future<List<CreditCardLight>> fetchCustomerCreditCards({
    required String customerId,
  }) async {
    final response = await _networkClient.get(
      FetchCustomerCreditCardsRequest(
        customerId: customerId,
        url: _endpoints.creditCardsUrl,
      ),
    );

    if (response.statusCode != HttpStatus.ok) {
      throw Exception();
    }

    final body = json.decode(
      utf8.decode(response.bodyBytes),
    );

    return NetworkCreditCardLight.fromDynamicList(body['data']);
  }
}
