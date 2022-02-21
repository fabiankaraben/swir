// ignore_for_file: prefer_const_constructors
import 'package:flutter_test/flutter_test.dart';
import 'package:swir/pages/details/bloc/details_bloc.dart';

void main() {
  group('DetailsState', () {
    group('DetailsState.all', () {
      test('Supports value comparisons', () {
        expect(DetailsState.all(), equals(DetailsState.all()));
        expect(DetailsState.all(isSendingReport: false),
            isNot(DetailsState.all(isSendingReport: true)));
      });
    });
  });
}
