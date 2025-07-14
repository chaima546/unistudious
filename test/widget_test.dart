import 'package:flutter_test/flutter_test.dart';

import 'package:unistudious/main.dart';

void main() {
  testWidgets('Welcome page contains welcome text', (WidgetTester tester) async {
    // Lance l’app entière (ou le widget racine)
    await tester.pumpWidget(const UnistudiousApp());

    // Vérifie que certains textes sont présents à l’écran
    expect(find.text('Bienvenue sur Unistudious'), findsOneWidget);
    expect(find.text('Créer un compte'), findsOneWidget);
    expect(find.text('Se connecter'), findsOneWidget);
  });
}
