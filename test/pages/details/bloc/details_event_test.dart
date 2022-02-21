// ignore_for_file: prefer_const_constructors
import 'package:flutter_test/flutter_test.dart';
import 'package:swir/data/models/models.dart';
import 'package:swir/pages/details/bloc/details_bloc.dart';

void main() {
  final person1 = Person(
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
  );

  final person2 = Person(
    id: 2,
    name: 'Person 2',
    height: 'Height 2',
    mass: 'Mass 2',
    gender: 'Gender 2',
    hairColor: 'Hair Color 2',
    skinColor: 'Skin Color 2',
    eyeColor: 'Eye Color 2',
    homeworld: 'Homeworld 2',
    vehicles: [Vehicle(name: 'Vehicle 2')],
    starships: [Starship(name: 'Starship 2')],
  );

  group('DetailsEvent', () {
    group('DetailsEvent.started', () {
      test('supports value comparisons', () {
        expect(
          DetailsEvent.started(),
          equals(DetailsEvent.started()),
        );
      });
    });

    group('DetailsEvent.reportRequested', () {
      test('Supports value comparisons', () {
        expect(DetailsEvent.reportRequested(person: person1),
            equals(DetailsEvent.reportRequested(person: person1)));
        expect(DetailsEvent.reportRequested(person: person1),
            isNot(DetailsEvent.reportRequested(person: person2)));
      });
    });
  });
}
