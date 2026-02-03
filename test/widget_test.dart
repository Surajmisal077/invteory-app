import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:final_inventory_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(MyApp());

    // Initial value check
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap + button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // After increment
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
