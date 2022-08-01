import 'dart:async';
import 'dart:convert';

import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

abstract class Injector {
  CreditCardFormViewModel get creditCardFormViewModel;

  CustomerFormViewModel get customerFormViewModel;

  Stream<bool> get initializationStream;

  ListCustomersViewModel get listCustomersViewModel;

  GlobalKey<NavigatorState> get navigatorKey;

  CustomerDetailsViewModel get customerDetailsViewModel;

  Future<void> initialize();

  void dispose();

  bool isInitialized();
}

class DefaultInjector implements Injector {
  static final Logger _logger = Logger('DefaultInjector');

  final StreamController<bool> _initializationStreamController =
      StreamController<bool>.broadcast();
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  late CreateCreditCardUseCase _createCreditCardUseCase;
  late CreateCustomerUseCase _createCustomerUseCase;
  late Config _config;
  bool _initialized = false;
  late ListCustomersUseCase _listCustomersUseCase;

  @override
  CreditCardFormViewModel get creditCardFormViewModel =>
      CreditCardFormViewModel(
        createCreditCardUseCase: _createCreditCardUseCase,
      );

  @override
  CustomerFormViewModel get customerFormViewModel => CustomerFormViewModel(
        createCustomerUseCase: _createCustomerUseCase,
      );

  @override
  Stream<bool> get initializationStream =>
      _initializationStreamController.stream;

  @override
  ListCustomersViewModel get listCustomersViewModel => ListCustomersViewModel(
        listCustomersUseCase: _listCustomersUseCase,
        navigatorKey: _navigatorKey,
      );

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  CustomerDetailsViewModel get customerDetailsViewModel =>
      CustomerDetailsViewModel(
        navigatorKey: _navigatorKey,
      );

  @override
  void dispose() {
    _logger.finest('Disposing DefaultInjector…');
    _initialized = false;
    _initializationStreamController.add(_initialized);
    _initializationStreamController.close();
  }

  @override
  Future<void> initialize() async {
    if (!isInitialized()) {
      _logger.finest('Loading configuration…');
      final configJson = await rootBundle.loadString(
        Constants.path,
      );

      _config = JsonConfig.fromDynamic(
        json.decode(configJson),
      );

      final networkClient = NetworkClient(apiKey: _config.stripeSecretKey);

      _logger.finest('Creating repositories…');

      final creditCardRepository = CreditCardNetworkRepository(
        endpoints: _config.endpoints,
        networkClient: networkClient,
      );

      final customerRepository = CustomerNetworkRepository(
        endpoints: _config.endpoints,
        networkClient: networkClient,
      );

      _logger.finest('Creating use cases…');

      _createCreditCardUseCase = CreateCreditCardUseCase(
        creditCardRepository: creditCardRepository,
      );

      _createCustomerUseCase = CreateCustomerUseCase(
        customerRepository: customerRepository,
      );

      _listCustomersUseCase = ListCustomersUseCase(
        customerRepository: customerRepository,
      );

      _initialized = true;
      _logger.finest('Initialization completed');
      _initializationStreamController.add(_initialized);
    }
  }

  @override
  bool isInitialized() => _initialized;
}
