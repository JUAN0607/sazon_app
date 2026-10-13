import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sazon_app/main.dart';

void main() {
  testWidgets('La navegación cambia el título del AppBar', (WidgetTester tester) async {
    await tester.pumpWidget(const SazonApp());
    expect(find.text('Sazón'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.chat_bubble_outline));
    await tester.pumpAndSettle();
    expect(find.text('Valentina Ríos'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.science_outlined));
    await tester.pumpAndSettle();
    expect(find.text('Laboratorio de widgets'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('2'), findsOneWidget);
  });
}
