// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Shopping App';

  @override
  String get welcomeText => 'Welcome to Shopping App';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signIn => 'Sign In';

  @override
  String get ourProducts => 'Our Products';

  @override
  String get hotOffers => 'Hot Offers';

  @override
  String get accountCreated => 'Account created successfully';

  @override
  String get accountSignedIn => 'Account sign-in successfully';

  @override
  String get close => 'Close';

  @override
  String get fullName => 'Full Name';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters';

  @override
  String get passwordsNotMatch => 'Passwords do not match';

  @override
  String get nameValidation => 'First letter must be uppercase';

  @override
  String get enterName => 'Enter your name';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';
}
