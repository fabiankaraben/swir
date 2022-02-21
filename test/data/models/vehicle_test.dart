// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:swir/data/models/vehicle.dart';

void main() {
  const name = 'Vehicle 1';
  const newName = 'Vehicle 1 modified';

  group('Vehicle', () {
    test('Supports value comparisons', () {
      expect(
        const Vehicle(
          name: name,
        ),
        const Vehicle(
          name: name,
        ),
      );
    });

    group('copyWith', () {
      test('returns object with updated name when name is passed', () {
        expect(
          Vehicle(
            name: name,
          ).copyWith(name: newName),
          equals(
            Vehicle(
              name: newName,
            ),
          ),
        );
      });
    });
  });
}
