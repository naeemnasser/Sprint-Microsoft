import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String arTitle;
  final String description;
  final String arDescription;
  final double price;
  final String imageUrl;
  final List<String> categories;
  final List<String> arCategories;
  final Map<String, String> details;
  final Map<String, String> arDetails;
  final double rating;
  final int reviews;

  Product({
    required this.id,
    required this.title,
    this.arTitle = '',
    required this.description,
    this.arDescription = '',
    required this.price,
    required this.imageUrl,
    required this.categories,
    this.arCategories = const [],
    required this.details,
    this.arDetails = const {},
    this.rating = 0.0,
    this.reviews = 0,
  });

  String getLocalizedTitle(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return locale == 'ar' && arTitle.isNotEmpty ? arTitle : title;
  }

  String getLocalizedDescription(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return locale == 'ar' && arDescription.isNotEmpty ? arDescription : description;
  }

  String getLocalizedDetail(String key, BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return (locale == 'ar' && arDetails.containsKey(key)) 
        ? arDetails[key]! 
        : details[key] ?? '';
  }

  List<String> getLocalizedCategories(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return (locale == 'ar' && arCategories.isNotEmpty) ? arCategories : categories;
  }

  static List<Product> sampleProducts = [
    Product(
      id: '1',
      title: 'Running Shoes',
      arTitle: 'أحذية ركض',
      description: 'High-performance running shoes with advanced cushioning technology for maximum comfort.',
      arDescription: 'أحذية ركض عالية الأداء مع تقنية وسائد متطورة لأقصى درجات الراحة.',
      price: 129.99,
      imageUrl: 'https://picsum.photos/500/300?1',
      categories: ['Shoes', 'Sports', 'Running'],
      arCategories: ['أحذية', 'رياضة', 'جري'],
      details: {
        'Brand': 'Nike',
        'Color': 'Black/Red',
        'Size': 'EU 42',
        'Material': 'Mesh & Rubber',
      },
      arDetails: {
        'Brand': 'نايكي',
        'Color': 'أسود/أحمر',
        'Size': 'المقاس الأوروبي 42',
        'Material': 'شبكي ومطاط',
      },
      rating: 4.7,
      reviews: 128,
    ),
    Product(
      id: '2',
      title: 'Cotton T-shirt',
      description: 'Premium quality cotton t-shirt, perfect for casual wear.',
      price: 29.99,
      imageUrl: 'https://picsum.photos/500/300?2',
      categories: ['Clothing', 'T-Shirts'],
      details: {
        'Brand': 'Adidas',
        'Color': 'White',
        'Size': 'M',
        'Material': '100% Cotton',
      },
      rating: 4.3,
      reviews: 89,
    ),
    Product(
      id: '3',
      title: 'Smart Watch',
      description: 'Feature-rich smartwatch with health monitoring and notifications.',
      price: 199.99,
      imageUrl: 'https://picsum.photos/500/300?3',
      categories: ['Electronics', 'Wearables'],
      details: {
        'Brand': 'Samsung',
        'Color': 'Black',
        'Display': 'AMOLED',
        'Battery Life': '7 days',
      },
      rating: 4.8,
      reviews: 215,
    ),
    Product(
      id: '4',
      title: 'Leather Backpack',
      description: 'Stylish and durable leather backpack for everyday use.',
      price: 89.99,
      imageUrl: 'https://picsum.photos/500/300?4',
      categories: ['Bags', 'Accessories'],
      details: {
        'Brand': 'Fossil',
        'Color': 'Brown',
        'Material': 'Genuine Leather',
        'Compartments': '3',
      },
      rating: 4.5,
      reviews: 156,
    ),
  ];
}
