import 'package:domain/domain.dart';

class NetworkCustomer extends Customer {
  NetworkCustomer({
    required super.description,
    required super.email,
    required super.id,
    required super.name,
    required super.phone,
  });

  factory NetworkCustomer.fromDynamic(dynamic map) => NetworkCustomer(
        description: map[_AttributesKeys.description],
        email: map[_AttributesKeys.email],
        id: map[_AttributesKeys.id],
        name: map[_AttributesKeys.name],
        phone: map[_AttributesKeys.phone],
      );

  static List<NetworkCustomer> fromDynamicList(dynamic list) {
    final result = <NetworkCustomer>[];

    if (list != null) {
      for (dynamic map in list) {
        result.add(NetworkCustomer.fromDynamic(map));
      }
    }

    return result;
  }
}

class _AttributesKeys {
  static const String description = 'description';
  static const String email = 'email';
  static const String id = 'id';
  static const String name = 'name';
  static const String phone = 'phone';
}
