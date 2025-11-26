import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_lab14/main.dart';

void main() {
  testWidgets('Counter increments when button is tapped', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MyHomePage(title:"test"),
    ),);
    // check if initial value is 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    // press on + button
    await tester.tap(find.byIcon(Icons.add));
    // rebuild the widget
    await tester.pump();
    // check if value is changed
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
