import 'package:flutter_test/flutter_test.dart';
//import 'package:flutter_modular_test/flutter_modular_test.dart';

main() {
  group('CardProdutoWidget', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      //await tester.pumpWidget(buildTestableWidget(CardProdutoWidget(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}
