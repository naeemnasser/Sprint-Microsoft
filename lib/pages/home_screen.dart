import 'package:flutter/material.dart';
import 'package:shopping_app/l10n/app_localizations.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final products = Product.sampleProducts;

    return WillPopScope(
      onWillPop: () async {
        // Exit the app when back is pressed on home screen
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(loc.ourProducts),
          automaticallyImplyLeading: false, // Remove back button
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: products.length,
                itemBuilder: (_, i) {
                  final p = products[i];
                  return ProductCard(
                    product: p,
                    animation: AlwaysStoppedAnimation(1.0),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    loc.hotOffers,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (_, i) => ListTile(
                  leading: Image.network('https://picsum.photos/50?random=$i'),
                  title: Expanded(child: Text('Offer description #$i')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
