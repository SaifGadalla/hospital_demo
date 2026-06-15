import 'package:flutter_test/flutter_test.dart';
import 'package:hospital_demo/common.dart';

void main() {
  testWidgets('NumberCard displays title and value', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: NumberCard(
            title: 'Active Patients',
            value: '42',
            icon: Icons.people,
          ),
        ),
      ),
    );

    expect(find.text('Active Patients'), findsOneWidget);
    expect(find.text('42'), findsOneWidget);
    expect(find.byIcon(Icons.people), findsOneWidget);
  });
}
