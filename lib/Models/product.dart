import 'category.dart';
class Product {
  String name;
  double price;
  Category category;
  String? productDetails;
  String size;
  List<String> images; // Optional list to store image URLs or paths

  // Constructor
  Product({
    required this.name,
    required this.price,
    required this.category,
    this.productDetails,
    required this.size,
    this.images = const [], // Default to an empty list
  });
}