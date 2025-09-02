import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/l10n/app_localizations.dart';
import 'package:shopping_app/providers/locale_provider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(loc.appTitle), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/remove-from-cart.png',
                    width: 100,
                    height: 100,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.shopping_cart, size: 50),
                  ),
                ),
                Expanded(
                  child: Image.network(
                    'https://picsum.photos/100',
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text(
              loc.welcomeText,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 200,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(loc.signUp),
                  ),
                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: const BorderSide(color: Colors.blueAccent),
                    ),
                    child: Text(
                      loc.signIn,
                      style: const TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Language: '),
                  TextButton(
                    onPressed: () async {
                      final currentLocale = Localizations.localeOf(context);
                      final newLocale = currentLocale.languageCode == 'ar'
                          ? const Locale('en')
                          : const Locale('ar');

                      // Update the locale in the provider
                      await Provider.of<LocaleProvider>(
                        context,
                        listen: false,
                      ).setLocale(newLocale);
                    },
                    child: Text(
                      Localizations.localeOf(context).languageCode == 'ar'
                          ? 'English'
                          : 'العربية',
                      style: const TextStyle(
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
