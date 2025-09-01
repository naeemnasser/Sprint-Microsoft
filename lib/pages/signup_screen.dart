import 'package:flutter/material.dart';
import 'package:shopping_app/l10n/app_localizations.dart';
import 'home_screen.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(loc.signUp)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                controller: _nameController,
                label: 'Full Name',
                validator: (val) {
                  if (val == null || val.isEmpty) return 'Enter name';
                  if (val[0] != val[0].toUpperCase()) {
                    return 'First letter must be uppercase';
                  }
                  return null;
                },
              ),
              CustomTextField(
                controller: _emailController,
                label: 'Email',
                validator: (val) {
                  if (val == null || !val.contains('@')) {
                    return 'Invalid email';
                  }
                  return null;
                },
              ),
              CustomTextField(
                controller: _passwordController,
                label: 'Password',
                obscureText: true,
                validator: (val) =>
                    val != null && val.length >= 6 ? null : 'Min 6 chars',
              ),
              CustomTextField(
                controller: _confirmController,
                label: 'Confirm Password',
                obscureText: true,
                validator: (val) => val == _passwordController.text
                    ? null
                    : 'Passwords don\'t match',
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: loc.signUp,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text(loc.accountCreated),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      const HomeScreen(),
                                  transitionsBuilder: (_, anim, __, child) =>
                                      FadeTransition(
                                        opacity: anim,
                                        child: child,
                                      ),
                                ),
                              );
                            },
                            child: Text(loc.close),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
