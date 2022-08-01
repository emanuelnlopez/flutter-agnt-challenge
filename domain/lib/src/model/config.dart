import 'package:domain/domain.dart';

class Config {
  Config({
    required this.endpoints,
    required this.stripeSecretKey,
    required this.stripePublishableKey,
  });

  final Endpoints endpoints;
  final String stripeSecretKey;
  final String stripePublishableKey;
}
