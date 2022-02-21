// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:swir/data/models/models.dart';

void main() {
  group('Person', () {
    test('Supports value comparisons', () {
      expect(
        const Person(
          id: 1,
          name: 'Person 1',
          height: 'Height 1',
          mass: 'Mass 1',
          gender: 'Gender 1',
          hairColor: 'Hair Color 1',
          skinColor: 'Skin Color 1',
          eyeColor: 'Eye Color 1',
          homeworld: 'Homeworld 1',
          vehicles: [Vehicle(name: 'Vehicle 1')],
          starships: [Starship(name: 'Starship 1')],
        ),
        const Person(
          id: 1,
          name: 'Person 1',
          height: 'Height 1',
          mass: 'Mass 1',
          gender: 'Gender 1',
          hairColor: 'Hair Color 1',
          skinColor: 'Skin Color 1',
          eyeColor: 'Eye Color 1',
          homeworld: 'Homeworld 1',
          vehicles: [Vehicle(name: 'Vehicle 1')],
          starships: [Starship(name: 'Starship 1')],
        ),
      );
    });

    group('copyWith', () {
      test('returns object with updated name when name is passed', () {
        expect(
          Person(
            id: 1,
            name: 'Person 1',
            height: 'Height 1',
            mass: 'Mass 1',
            gender: 'Gender 1',
            hairColor: 'Hair Color 1',
            skinColor: 'Skin Color 1',
            eyeColor: 'Eye Color 1',
            homeworld: 'Homeworld 1',
            vehicles: [Vehicle(name: 'Vehicle 1')],
            starships: [Starship(name: 'Starship 1')],
          ).copyWith(
            name: 'Person 1 modified',
            height: 'Height 1 modified',
            mass: 'Mass 1 modified',
            gender: 'Gender 1 modified',
            hairColor: 'Hair Color 1 modified',
            skinColor: 'Skin Color 1 modified',
            eyeColor: 'Eye Color 1 modified',
            homeworld: 'Homeworld 1 modified',
            vehicles: [Vehicle(name: 'Vehicle 1 modified')],
            starships: [Starship(name: 'Starship 1 modified')],
          ),
          equals(
            Person(
              id: 1,
              name: 'Person 1 modified',
              height: 'Height 1 modified',
              mass: 'Mass 1 modified',
              gender: 'Gender 1 modified',
              hairColor: 'Hair Color 1 modified',
              skinColor: 'Skin Color 1 modified',
              eyeColor: 'Eye Color 1 modified',
              homeworld: 'Homeworld 1 modified',
              vehicles: [Vehicle(name: 'Vehicle 1 modified')],
              starships: [Starship(name: 'Starship 1 modified')],
            ),
          ),
        );
      });
    });
  });
}
