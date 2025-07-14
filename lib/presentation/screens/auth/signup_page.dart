import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Créer un compte")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FlutterLogo(size: 80),
            const SizedBox(height: 16),

            const Text(
              "Rejoignez Unistudious pour commencer votre parcours d'apprentissage",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 24),

            TextFormField(
              decoration: const InputDecoration(
                labelText: "Nom complet",
                hintText: "Entrez votre nom complet",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextFormField(
              decoration: const InputDecoration(
                labelText: "Adresse e-mail",
                hintText: "Entrez votre adresse e-mail",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Mot de passe",
                hintText: "Créez un mot de passe",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Confirmer le mot de passe",
                hintText: "Confirmez votre mot de passe",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            CheckboxListTile(
              value: acceptTerms,
              onChanged: (value) {
                setState(() {
                  acceptTerms = value ?? false;
                });
              },
              title: const Text(
                "J'accepte les Conditions d'utilisation et la Politique de confidentialité",
                style: TextStyle(fontSize: 14),
              ),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 12),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                if (!acceptTerms) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Vous devez accepter les conditions")),
                  );
                  return;
                }

                // TODO: Ajouter logique d'inscription ici
              },
              child: const Text(
                "S'inscrire",
                 style: TextStyle(fontSize: 16 ,color: Colors.white),

              ),
            ),

            const SizedBox(height: 24),

            const Text("Ou inscrivez-vous avec"),
            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Intégration Google
                  },
                  icon: const Icon(Icons.account_circle),
                  label: const Text("Google"),
                ),
                const SizedBox(width: 12),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Intégration Facebook
                  },
                  icon: const Icon(Icons.facebook),
                  label: const Text("Facebook"),
                ),
              ],
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Vous avez déjà un compte ? "),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                  child: const Text("Se connecter"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
