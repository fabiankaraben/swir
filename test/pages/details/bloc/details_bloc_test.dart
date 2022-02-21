// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:swir/data/models/models.dart';
import 'package:swir/data/repositories/app_repository.dart';
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

  group('DetailsBloc', () {
    test('initial state is DetailsState.all', () {
      expect(
        DetailsBloc(repository: AppRepository()).state,
        DetailsState.all(),
      );
    });

    group('DetailsEvent.reportRequested', () {
      blocTest<DetailsBloc, DetailsState>(
        'emits [DetailsState.all()] with true value in [isSendingReport]',
        build: () => DetailsBloc(repository: AppRepository()),
        act: (bloc) => bloc.add(DetailsEvent.reportRequested(person: person1)),
        expect: () => [DetailsState.all(isSendingReport: true, error: '')],
        verify: (bloc) => expect(bloc.state.isSendingReport, isTrue),
      );
    });
  });
}
