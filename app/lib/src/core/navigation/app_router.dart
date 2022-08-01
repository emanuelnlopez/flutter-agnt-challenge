import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static RouteFactory get generatedRoutes => (RouteSettings settings) {
        ModalRoute? route;

        var argumentsMap = settings.arguments as Map<String, dynamic>?;

        switch (settings.name) {
          case NamedRoute.creditCardForm:
            route = MaterialPageRoute(
              builder: (_) => CreditCardFormScreen(
                creditCard: argumentsMap?['creditCard'],
                customer: argumentsMap?['customer'],
              ),
              settings: RouteSettings(
                name: settings.name,
              ),
            );
            break;
          case NamedRoute.customerForm:
            route = MaterialPageRoute(
              builder: (_) => const CustomerFormScreen(),
              settings: RouteSettings(
                name: settings.name,
              ),
            );
            break;
          case NamedRoute.listCustomers:
            route = MaterialPageRoute(
              builder: (_) => const ListCustomersScreen(),
              settings: RouteSettings(
                name: settings.name,
              ),
            );
            break;
          case NamedRoute.customerDetails:
            route = MaterialPageRoute(
              builder: (_) => CustomerDetailsScreen(
                customer: argumentsMap?['customer'],
              ),
              settings: RouteSettings(
                name: settings.name,
              ),
            );
            break;
        }

        return route;
      };
}
