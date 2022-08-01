import 'package:domain/domain.dart';

class JsonEndpoints extends Endpoints {
  JsonEndpoints({
    required super.creditCardsUrl,
    required super.customersUrl,
  });

  factory JsonEndpoints.fromDynamic(dynamic map) => JsonEndpoints(
        creditCardsUrl: map[_AttributesKeys.creditCardsUrl],
        customersUrl: map[_AttributesKeys.customersUrl],
      );
}

abstract class _AttributesKeys {
  static const creditCardsUrl = 'creditCardsUrl';
  static const customersUrl = 'customersUrl';
}
