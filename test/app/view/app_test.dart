import 'package:flutter_test/flutter_test.dart';
import 'package:swir/app/app.dart';
import 'package:swir/pages/home/home.dart';

void main() {
  group('App', () {
    testWidgets('Renders HomePage', (tester) async {
      await tester.pumpWidget(const App());
      await tester.pump(const Duration(milliseconds: 200));
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
