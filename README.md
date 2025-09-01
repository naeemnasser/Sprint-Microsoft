Flutter Shopping App
Project Overview

This project is a Flutter-based shopping application. It includes a welcome screen, user authentication (sign up and sign in), smooth transitions, and a home screen that displays products and offers. The app also demonstrates localization support.

Objectives

Build a complete shopping app using Flutter.

Apply core Dart concepts (variables, functions, OOP).

Use stateless and stateful widgets.

Implement form validation, navigation, and animations.

Add localization support.

Publish the code on GitHub with README and screenshots.

Tools

Flutter SDK

Dart

Visual Studio Code / Android Studio

GitHub

Flutter Intl for localization

Requirements Implemented

Welcome Screen

AppBar with title.

Two images (local and online).

Text with custom font.

Buttons for Sign Up and Sign In.

Sign Up / Sign In

Sign Up form (full name, email, password, confirm password).

Validation for each field.

Dialog on success: "Account created successfully".

Sign In form (email and password).

Dialog on success: "Account sign-in successfully".

Transitions

Fade animation between pages.

Shopping Home Screen

AppBar with title "Our Products".

Horizontal PageView for featured products.

GridView with product cards (2 per row).

Each card has image, title, and add-to-cart button (shows Snackbar).

"Hot Offers" section created with ListView.builder (5 items).

Localization (Bonus)

Support for English and Arabic using .arb files.

How to Run

Clone the repository:

git clone https://github.com/naeemnasser/Sprint-Microsoft.git
cd Sprint-Microsoft


Install dependencies:

flutter pub get


Run the app:

flutter run

Screenshots
Welcome Screen	Sign Up	Sign In

	
	
Home Screen	Hot Offers	Arabic Version

	
	
Project Structure
lib/
  main.dart
  screens/
    welcome_screen.dart
    signup_screen.dart
    signin_screen.dart
    home_screen.dart
  widgets/
    custom_button.dart
    custom_textfield.dart
  models/
    product.dart
  l10n/
    app_en.arb
    app_ar.arb
    app_localizations.dart (generated)

Developer

Name: Naeem Nasser
GitHub: naeemnasser

LinkedIn: naeem-nasser