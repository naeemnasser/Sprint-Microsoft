// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'تطبيق التسوق';

  @override
  String get welcomeText => 'مرحباً بك في تطبيق التسوق';

  @override
  String get signUp => 'تسجيل حساب جديد';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get ourProducts => 'منتجاتنا';

  @override
  String get hotOffers => 'العروض الساخنة';

  @override
  String get accountCreated => 'تم إنشاء الحساب بنجاح';

  @override
  String get accountSignedIn => 'تم تسجيل الدخول بنجاح';

  @override
  String get close => 'إغلاق';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get invalidEmail => 'البريد الإلكتروني غير صالح';

  @override
  String get passwordTooShort => 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';

  @override
  String get passwordsNotMatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get nameValidation => 'أول حرف من الاسم يجب أن يكون كبيرًا';

  @override
  String get enterName => 'أدخل اسمك';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟';
}
