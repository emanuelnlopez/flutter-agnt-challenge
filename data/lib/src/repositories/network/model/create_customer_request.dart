import 'package:data/data.dart';
import 'package:domain/domain.dart';

class CreateCustomerRequest extends NetworkRequest {
  CreateCustomerRequest({
    required this.customer,
    required super.url,
  });

  final Customer customer;

  @override
  String? get body {
    final body = {
      _AttributesKeys.description: customer.description,
      _AttributesKeys.email: customer.email,
      _AttributesKeys.id: customer.id,
      _AttributesKeys.name: customer.name,
      _AttributesKeys.phone: customer.phone,
    };

    body.removeWhere((key, value) => value == null);

    return body.keys.map((key) => '$key=${body[key]}').join('&');
  }
}

class _AttributesKeys {
  static const String description = 'description';
  static const String email = 'email';
  static const String id = 'id';
  static const String name = 'name';
  static const String phone = 'phone';
}
