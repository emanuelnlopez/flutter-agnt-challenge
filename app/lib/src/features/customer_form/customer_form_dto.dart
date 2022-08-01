import 'package:domain/domain.dart';

class CustomerFormDTO {
  CustomerFormDTO({
    this.description,
    this.email,
    this.id,
    this.name,
    this.phone,
  });

  factory CustomerFormDTO.fromCustomer(Customer? customer) => CustomerFormDTO(
        description: customer?.description,
        email: customer?.email,
        id: customer?.id,
        name: customer?.name,
        phone: customer?.phone,
      );

  Customer toCustomer() => Customer(
        description: description,
        email: email!,
        id: id,
        name: name!,
        phone: phone!,
      );

  String? description;
  String? email;
  String? id;
  String? name;
  String? phone;
}
