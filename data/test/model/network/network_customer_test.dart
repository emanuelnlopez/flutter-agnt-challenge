import 'dart:convert';

import 'package:data/data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should be able to parse a customer', () {
    // Arrange
    final rawData =
        '{"description":"Example customer","email":"jon@doe.com","id":"abcd1","name":"John Doe","phone":"+1 456 789654"}';

    // Act
    final customer = NetworkCustomer.fromDynamic(
      json.decode(rawData),
    );

    // Assert
    expect(customer.description, 'Example customer');
    expect(customer.email, 'jon@doe.com');
    expect(customer.id, 'abcd1');
    expect(customer.name, 'John Doe');
    expect(customer.phone, '+1 456 789654');
  });

  test('Should be able to parse a customer list', () {
    // Arrange
    final rawData =
        '[{"description":"Example customer #01","email":"jonh@doe.com","id":"abcd1","name":"John Doe","phone":"+1 456 789654"},{"description":"Example customer #02","email":"jane@doe.com","id":"abcd2","name":"Jane Doe","phone":"+1 456 789147"},{"description":"Example customer #03","email":"step@rohit.com","id":"abcd1","name":" Steph Rohit","phone":"+1 456 486"}]';

    final map = json.decode(rawData);

    // Act
    final customers = NetworkCustomer.fromDynamicList(
      map,
    );

    // Assert
    expect(customers.length, map.length);
    expect(customers[0].name, map[0]['name']);
    expect(customers[1].email, map[1]['email']);
    expect(customers[2].phone, map[2]['phone']);
  });
}
