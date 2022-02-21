// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:swir/data/models/starship.dart';

void main() {
  const name = 'Starship 1';
  const newName = 'Starship 1 modified';

  group('Starship', () {
    test('Supports value comparisons', () {
      expect(
        const Starship(
          name: name,
        ),
        const Starship(
          name: name,
        ),
      );
    });

    group('copyWith', () {
      test('returns object with updated name when name is passed', () {
        expect(
          Starship(
            name: name,
          ).copyWith(name: newName),
          equals(
            Starship(
              name: newName,
            ),
          ),
        );
      });
    });
  });
}
