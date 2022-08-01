import 'package:data/data.dart';
import 'package:domain/domain.dart';

class JsonConfig extends Config {
  JsonConfig({
    required super.endpoints,
    required super.stripeSecretKey,
    required super.stripePublishableKey,
  });

  factory JsonConfig.fromDynamic(dynamic map) => JsonConfig(
        endpoints: JsonEndpoints.fromDynamic(map[_AttributesKeys.endpoints]),
        stripeSecretKey: map[_AttributesKeys.stripeSecretKey],
        stripePublishableKey: map[_AttributesKeys.stripePublishableKey],
      );
}

abstract class _AttributesKeys {
  static const endpoints = 'endpoints';
  static const stripeSecretKey = 'stripeSecretKey';
  static const stripePublishableKey = 'stripePublishableKey';
}
