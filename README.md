# 🛍️ Flutter Shopping App  

A complete **shopping application** built with Flutter.  
The app features authentication, smooth transitions, localization, and product management.  

---

## 📖 Project Overview  
This project demonstrates a shopping app with:  
- **Welcome Screen** with animations and buttons.  
- **User Authentication** (Sign Up & Sign In).  
- **Smooth transitions** between screens.  
- **Home Screen** with products, grid view, and offers.  
- **Localization**: English 🇬🇧 & Arabic 🇪🇬.  

---

## 🎯 Objectives  
✔ Build a full Flutter shopping app.  
✔ Apply core Dart concepts: variables, functions, OOP.  
✔ Use **Stateless** and **Stateful** widgets.  
✔ Implement **form validation**, **navigation**, and **animations**.  
✔ Add **localization support** (English & Arabic).  

---

## 🛠 Tools & Technologies  
![Flutter](https://img.shields.io/badge/Flutter-3.0-blue?logo=flutter)  
![Dart](https://img.shields.io/badge/Dart-Language-blue?logo=dart)  
![GitHub](https://img.shields.io/badge/GitHub-Repo-black?logo=github)  
![Android Studio](https://img.shields.io/badge/IDE-AndroidStudio-green?logo=androidstudio)  
![VS Code](https://img.shields.io/badge/IDE-VSCode-blue?logo=visualstudiocode)  

---

## ✅ Requirements Implemented  

### 🔹 Welcome Screen  
- AppBar with title  
- Local & online images  
- Custom font text  
- Buttons: **Sign Up / Sign In**

### 🔹 Authentication  
- Sign Up form (Full name, Email, Password, Confirm Password)  
- Validation for each field  
- Success dialog: *Account created successfully*  
- Sign In form (Email + Password)  
- Success dialog: *Account sign-in successfully*  

### 🔹 Transitions  
- Smooth **fade animation** between pages  

### 🔹 Shopping Home Screen  
- AppBar with title **Our Products**  
- Horizontal **PageView** for featured products  
- **GridView** with product cards (2 per row)  
- Product card: Image, Title, Add-to-Cart button (Snackbar)  
- **Hot Offers** with `ListView.builder`  

### 🔹 Localization (Bonus)  
- Multilingual app (English & Arabic) using `.arb` files  

---

## ▶️ How to Run  

```bash
# Clone the repository
git clone https://github.com/naeemnasser/Sprint-Microsoft.git
cd Sprint-Microsoft

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## 📸 Screenshots

**Welcome Screen**  
<img src="assets/images/screanshoten/welcomeScreen.png" width="250">

**Sign Up**  
<img src="assets/images/screanshoten/signup.png" width="250">

**Sign In**  
<img src="assets/images/screanshoten/signin.png" width="250">

**Validation Error**  
<img src="assets/images/screanshoten/signuperror.png" width="250">

**Sign Up With Data**  
<img src="assets/images/screanshoten/signupUpWithData.png" width="250">

**Success Message**  
<img src="assets/images/screanshoten/signedUP.png" width="250">

**Products Grid**  
<img src="assets/images/screanshoten/OurProduct.png" width="250">

**Product Details**  
<img src="assets/images/screanshoten/productDetails.png" width="250">

**Welcome (Arabic)**  
<img src="assets/images/screenshotar/ARwelcome.png" width="250">

**Sign In (Arabic)**  
<img src="assets/images/screenshotar/ArsignIn.png" width="250">

**Sign Up (Arabic)**  
<img src="assets/images/screenshotar/ARsignup.png" width="250">

**Signed In (Arabic)**  
<img src="assets/images/screenshotar/ARsignedin.png" width="250">

**Products (Arabic)**  
<img src="assets/images/screenshotar/ARourproduct.png" width="250">


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
