import 'package:atividade05/tabuada.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Tabuada deve ser construída corretamente', (WidgetTester tester) async {
    // Constrói a UI do widget Tabuada
    await tester.pumpWidget(MaterialApp(home: Tabuada()));

    // Verifica se os widgets necessários foram construídos corretamente
    expect(find.text('Tabuada'), findsOneWidget);
    expect(find.text('5 x 5 ='), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Calcular'), findsOneWidget);
  });

  testWidgets('Verifica se o cálculo da multiplicação está correto para um exemplo específico', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: Tabuada()));
  await tester.tap(find.byType(DropdownButton).first);
  await tester.pump();
  await tester.tap(find.text('7').last);
  await tester.pump();
  await tester.tap(find.byType(DropdownButton).last);
  await tester.pump();
  await tester.tap(find.text('4').last);
  await tester.pump();
  await tester.tap(find.byType(ElevatedButton));
  await tester.pump();
  expect(find.text('7 x 4 = 28'), findsOneWidget);
});

}
