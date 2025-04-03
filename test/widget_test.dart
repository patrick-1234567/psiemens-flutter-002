// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:psiemensflutter002/main.dart';

void main() {
  testWidgets('Verifica que la pantalla principal muestra los botones', (WidgetTester tester) async {
    // Construye la aplicación y renderiza un frame.
    await tester.pumpWidget(MiApp());

    // Verifica que los botones están presentes.
    expect(find.text('Ir a Inicio'), findsOneWidget);
    expect(find.text('Ir a Acerca de'), findsOneWidget);
    expect(find.text('Ir a Contacto'), findsOneWidget);
  });
}