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
English version
  welcome screen
<img src="assets\images\screanshoten\welcomeScreen.png" width="250">
  signup screen
<img src="assets\images\screanshoten\signup.png" width="250">
  sign in screen
<img src="assets\images\screanshoten\signin.png" width="250">
check validation for signup
<img src="assets\images\screanshoten\signuperror.png" width="250">
fill data in signup
<img src="assets\images\screanshoten\signupUpWithData.png" width="250">
mwssage when signed Up
<img src="assets\images\screanshoten\signedUP.png" width="250">
our product with gridview
<img src="assets\images\screanshoten\OurProduct.png" width="250">
product details page
<img src="assets\images\screanshoten\productDetails.png" width="250">


Screens Offers	Arabic Version
  welcome screen
  <img src="assets\images\screenshotar\ARwelcome.png" width="250">
  signed in screen
  <img src="assets\images\screenshotar\ARsignedin.png" width="250">
  sign in screen
  <img src="assets\images\screenshotar\ArsignIn.png" width="250">
  signup screen
  <img src="assets\images\screenshotar\ARsignup.png" width="250">
  our product screen
  <img src="assets\images\screenshotar\ARourproduct.png" width="250">
	
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
| Welcome                                                              | Sign Up                                                       | Sign In                                                       |
| -------------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| <img src="assets/images/screanshoten/welcomeScreen.png" width="250"> | <img src="assets/images/screanshoten/signup.png" width="250"> | <img src="assets/images/screanshoten/signin.png" width="250"> |
| Validation                                                         | Sign Up Data                                                            | Success Message                                                 |
| ------------------------------------------------------------------ | ----------------------------------------------------------------------- | --------------------------------------------------------------- |
| <img src="assets/images/screanshoten/signuperror.png" width="250"> | <img src="assets/images/screanshoten/signupUpWithData.png" width="250"> | <img src="assets/images/screanshoten/signedUP.png" width="250"> |

| Products Grid                                                     | Product Details                                                       |
| ----------------------------------------------------------------- | --------------------------------------------------------------------- |
| <img src="assets/images/screanshoten/OurProduct.png" width="250"> | <img src="assets/images/screanshoten/productDetails.png" width="250"> |
| Welcome                                                          | Sign In                                                         | Sign Up                                                         |
| ---------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| <img src="assets/images/screenshotar/ARwelcome.png" width="250"> | <img src="assets/images/screenshotar/ArsignIn.png" width="250"> | <img src="assets/images/screenshotar/ARsignup.png" width="250"> |
| Signed In                                                         | Products                                                            |
| ----------------------------------------------------------------- | ------------------------------------------------------------------- |
| <img src="assets/images/screenshotar/ARsignedin.png" width="250"> | <img src="assets/images/screenshotar/ARourproduct.png" width="250"> |
