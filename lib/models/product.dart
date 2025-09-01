class Product {
  final String title;
  final String imageUrl;

  Product({required this.title, required this.imageUrl});

  static List<Product> sampleProducts = [
    Product(title: 'Shoes', imageUrl: 'https://picsum.photos/200?1'),
    Product(title: 'T-shirt', imageUrl: 'https://picsum.photos/200?2'),
    Product(title: 'Watch', imageUrl: 'https://picsum.photos/200?3'),
    Product(title: 'Bag', imageUrl: 'https://picsum.photos/200?4'),
  ];
}
