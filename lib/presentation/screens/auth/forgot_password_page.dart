import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mot de passe oublié')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Entrez votre adresse e-mail pour recevoir un lien de réinitialisation de mot de passe.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Adresse e-mail',
                hintText: 'exemple@domaine.com',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // TODO: envoyer la demande de réinitialisation
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Lien de réinitialisation envoyé (non réel pour le moment)"),
                  ),
                );
              },
              child: const Text('Envoyer le lien'),
            ),
            const SizedBox(height: 24),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context); // retour vers login
                },
                child: const Text("Retour à la connexion"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
